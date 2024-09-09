ACTIVITIES I DID FOR KUBERNETES EXERCISE

Installed Prerequisites on EC2:
Firstly I installed 1 ec2  Linux machine with my desired type in which I used T3.micro after that I SSH into the machine.
Updated the package manager:
# sudo apt update -y
Installed Docker and ran it :
#sudo apt install docker.io -y   
#sudo systemctl start docker
#sudo usermod -aG docker ec2-user

Installed kubectl to interact with Kubernetes clusters:
#curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
# chmod +x kubectl
#sudo mv kubectl /usr/local/bin/kubectl
Installed eksctl for creating EKS clusters:
#curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/0.145.0/eksctl_Linux_amd64.tar.gz" | tar xz -C /tmp
#sudo mv /tmp/eksctl /usr/local/bin

Installed AWS CLI for interacting with AWS
#curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
#unzip awscliv2.zip
#sudo ./aws/install
Installed Helm for managing Kubernetes applications
#curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

Authenticated AWS CLI 
aws configure
Entered my  AWS Access Key, Secret Key, Region, and Output format =JSON


AFTER that I created EKS cluster 

#eksctl create cluster --name polls-cluster --version 1.25 --region <region> --nodegroup-name standard-workers --node-type t3.medium --nodes 3 --nodes-min 1 --nodes-max 4 --managed
To manage my EKS cluster with kubectl, i used Update kubeconfig: 
#aws eks --region us-east-2 update-kubeconfig --name polls-cluster
AFTER That Deployed Postgresql with CloudnativePG with HELM
#helm repo add cnpg https://cloudnative-pg.github.io/charts
#helm repo update
#helm install my-postgresql-operator cnpg/cloudnative-pg --namespace cnpg-system

Used RDS for postgresql
created 1 RDS with name 
database-1


Build and Deployed  Django Poll App
for that cloned django app from git hub 
#git clone https://ashishbat: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@github.com/do-  community/django-polls
and after that i need to Update Django settings.py to use PostgreSQL
#cd django-polls/mysite/settings.py

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'pollsdb',
        'USER': 'postgres',
        'PASSWORD': 'postgres123',
        'HOST': 'database-1.crsoq022wydy.us-east-2.rds.amazonaws.com',
        'PORT': '5432',
    }
}
this need to be added in my django app so that this app will use postgres as database pollsdb is the database name which I created from ec2 console 

Created Dockerfile: Wrote a Dockerfile for my Django app
dockerfile
FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/
WORKDIR /app/django-polls
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
by running manage.py with runserver and port 8000 this is my output app results and polls which i created
![image](https://github.com/user-attachments/assets/3cf09d1d-0c37-4103-98da-22a06db5ea03)
![image](https://github.com/user-attachments/assets/ebc30eb1-ad27-40d6-8bd2-03fc8ab7cf46)
![image](https://github.com/user-attachments/assets/602b5fed-49e5-4410-89d9-ba580bb197ca)
![image](https://github.com/user-attachments/assets/0bcd7a0a-ce9a-49ff-827d-fc88829a083c)
![image](https://github.com/user-attachments/assets/f1175fba-7762-453b-a67a-0836d1c075fc)



After that Build and Pushed the Docker Image to ECR: Created an ECR repository, tagged image, and pushed it:
#aws ecr create-repository --repository-name polls-app
#docker tag polls-app:latest 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
#docker push 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest

Deployd the App on EKS: Created deployment.yaml and service.yaml for the Django app
deployment.yaml
kind: Deployment
metadata:
  name: polls-app
spec:
  replicas: 3
  selector:
    matchLabels:
      app: polls
  template:
    metadata:
      labels:
        app: polls
    spec:
      containers:
      - name: polls-app
        image: 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
        ports:
        - containerPort: 8000
        volumeMounts:
        - name: polls-storage
          mountPath: /data  
      volumes:
      - name: polls-storage
        persistentVolumeClaim:
          claimName: my-manual-pvc  

service.yaml
apiVersion: v1
kind: Service
metadata:
  name: polls-service
spec:
  type: NodePort
  selector:
    app: polls
  ports:
    - protocol: TCP
      port: 80
      targetPort: 8000
      nodePort: 30001

Apply these:
#kubectl apply -f deployment.yaml
#kubectl apply -f service.yaml

Set Up Prometheus for Monitoring
Installed Prometheus via Helm:
#helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
#helm repo update
#helm install prometheus prometheus-community/prometheus

after that i faced some issues for PVC as it is not going up  for that i created manual script for pv and pvc for my app and for prometheus i have added policies from IAM role policies after that it ran,

pvc.yaml
piVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: my-manual-pvc
  namespace: cnpg-system
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 5Gi
  storageClassName: gp2

Access the Application
Access the Django App: Open your browser and navigate to:
Polls page: http://<EC2-public-ip>:30001/
Admin page: http://<EC2-public-ip>:30001/admin/

Prometheus
![image](https://github.com/user-attachments/assets/6646ddd5-febc-47bf-8f30-46faf5349343)




