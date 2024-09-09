ls
sudo yum update -y
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo usermod -aG docker ec2-user
sudo usermod -aG docker ubuntu
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/kubectl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/0.145.0/eksctl_Linux_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/v0.145.0/eksctl_Linux_amd64.tar.gz" -o eksctl.tar.gz
tar -xzf eksctl.tar.gz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo apt install unzip
unzip awscliv2.zip
sudo ./aws/install
/usr/local/bin/aws --version
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
aws configure
ls
eksctl create cluster --name polls-cluster --version 1.25 --region <region> --nodegroup-name standard-workers --node-type t3.medium --nodes 3 --nodes-min 1 --nodes-max 4 --managed
eksctl create cluster --name polls-cluster --version 1.25 --region us-east-2 --nodegroup-name standard-workers --node-type t3.medium --nodes 3 --nodes-min 1 --nodes-max 4 --managed
aws eks --region <region> update-kubeconfig --name polls-cluster
aws eks --region us-east-2 update-kubeconfig --name polls-cluster
kubectl get nodes
helm repo add cnpg https://cloudnative-pg.github.io/charts
helm repo update
helm install my-postgresql-operator cnpg/cloudnative-pg --namespace cnpg-system --create-namespace
helm ls -n cnpg-system
ls
vi postgres-cluster.yaml
ls
kubectl apply -f postgres-cluster.yaml
ls
vi postgres-cluster.yaml 
kubectl apply -f postgres-cluster.yaml
vi postgres-cluster.yaml 
kubectl apply -f postgres-cluster.yaml
vi postgres-cluster.yaml 
kubectl get pods --all-namespaces
kubectl describe crd clusters.postgresql.cnpg.io -n cnpg-system
ls
vi postgres-cluster.yaml 
kubectl apply -f postgres-cluster.yaml
cat postgres-cluster.yaml 
helm ls -n cnpg-system
kubectl apply -f postgres-cluster.yaml
kubectl get crds | grep postgresql
kubectl get crd clusters.postgresql.cnpg.io -o yaml
ls
kubectl get crd clusters.postgresql.cnpg.io > crd.yaml
ls
vi crd.yaml 
rm crd.yaml 
ls
kubectl api-resources | grep postresql
kubectl api-resources | grep postgresql
heml show values cnpg/cloudnative-pg
helm show values cnpg/cloudnative-pg
yamllint postgres-cluster.yaml 
sudo apt install yamllint
yamllint postgres-cluster.yaml 
ls
kubectl get crds | grep postgresql
kubectl get crd clusters.postgresql.cnpg.io > test.yaml
ls
vi test.yaml 
kubectl describe crd clusters.postgresql.cnpg.io > test.yaml
ls
vi test.yaml
ls
vi test.yaml 
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm install polls-postgresql bitnami/postgresql -n cnpg-system
export POSTGRES_PASSWORD=$(kubectl get secret --namespace cnpg-system polls-postgresql -o jsonpath="{.data.postgresql-password}" | base64 --decode)
kubectl get secret --namespace cnpg-system polls-postgresql -o jsonpath="{.data.postgresql-username}" | base64 --decode
helm ls --all-namespaces
kubectl get secrets -n cnpg-system
kubectl get secrets -n cnpg-system polls-postgresql -o jsonpath="{.data.postgresql-password}" | base64 --decode
ls
kubectl get secrets -n cnpg-system polls-postgresql -o jsonpath="{.data.postgresql-password}" | base64 --decode > password.yaml
ls
vi password.yaml 
rm password.yaml 
ls
kubectl get pods -n cnpg-system
kubectl get storageclass
vi postgres-cluster.yaml 
kubectl create secret generic postgres-admin-secret   --from-literal=username=pollsadmin   --from-literal=password=postgres123   --namespace cnpg-system
kubectl apply -f postgres-cluster.yaml
kubectl get storageclass
vi postgres-cluster.yaml 
kubectl apply -f postgres-cluster.yaml
helm ls --all-namespaces
kubectl get pods -n cnpg-system
git clone https://github.com/digitalocean/sample-django-polls.git
git clone https://ashishbat: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@github.com/digitalocean/sample-django-polls.git
git clone https://ashishbat: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@github.com/do-community/django-polls-app.git
ls
helm ls --all-namespaces
ls
git clone https://ashishbat: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@github.com/mbrochhh/django-polls.git
git clone https://ashishbat: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@github.com/mbrochhh/django-polls
git clone https://ashishbat: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@github.com/hugosolar/django-polls-redux.git
git clone https://ashishbat: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@github.com/hugosolar/django-polls-redux
git clone https://ashishbat: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@github.com/DjangoGirls/tutorial.git
ls
cd tutorial/
ls
cd bg/
ls
cd ..
ls
cd contributing/
ls
cd ..
ls
cd cs/
ls
cd ..
ls
cd de/
ls
cd ..
ls
cd styles/
ls
cd ..
ls
cd ..
ls
git clone https://ashishbat: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@github.com/django/django.git
ls
cd django/
ls
cd django/
ls
vi __init__.py 
vi __main__.py 
cd apps/
ls
cd ..
ls
cd ..
ls
cd tests/
ls
cd ..
ls
grep settings.py
ls
cd django/
ls
cd ..
l
cd ..
ls
cd tutorial/
ls
cd pl/
ls
cd django
ls
cd ../..
ls
cd ..
ls
cd aws/
ls
cd ..
ls
pip install django
sudo apt install python3-pip
pip install django
django-admin startproject mysite
sudo apt install python3-django
django-admin startproject mysite
ls
cd mysite
ls
python manage.py startapp polls
python3 manage.py startapp polls
ls
cd polls/migrations/
cd ..
ls
from django.db import models
sudo apt install mailutils
from django.db import models
cd ..
ls
from django.db import models
ls
cd polls/
ls
vi models.py 
cd ..
l
ls
cd mysite/
ls
vi settings.py 
cd ..
ls
cd polls/
ls
vi views.py 
ls
cd ..
ls
cd mysite/
ls
vi urls.py 
python manage.py migrate
python3 manage.py migrate
ls
cd ..
ls
python3 manage.py migrate
python3 manage.py createsuperuser --username=admin --email=admin@example.com
ls
cd polls/
ls
cd ..
ls
cd mysite/
ls
cd ..
ls
cd mysite/
l
ls
cd mysite/
ls
vi settings.py 
ls
helm ls --all-namespaces
ls
cd ..
ls
python manage.py migrate
python3 manage.py migrate
python manage.py runserver 0.0.0.0:8000
python3 manage.py runserver 0.0.0.0:8000
ls
cd ..
ls
cd mysite/
ls
vi service.yaml
kubectl apply -f service.yaml
ls
cd ..
ls
git clone https://ashishbat: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@github.com/do-community/django-polls
ls
cd django-polls/
ls
cd mysite/
ls
vi settings.py 
ls
cd ..
ls
cd ..
ls
vi docker-file-django-polls
aws ecr create-repository --repository-name polls-app
docker tag polls-app:latest 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
ls
cd django-polls/
ls
cd mysite/
ls
cd ..
ls
cd ..
ls
vi docker-file-django-polls 
helm ls --all-namespaces
cd django-polls/
ls
cd mysite/
ls
vi settings.py 
helm ls --all-namespaces
ls
cd ../..
ls
cd django-polls/
cd ..
ls
cd django-polls/
ls
cd mysite/
ls
vi urls.py 
cd ..
ls
cd polls/
ls
cd .
ls
cd ..
ls
cd mysite/
ls
vi settings.py 
ls
cd ..
ls
vi manage.py 
ls
cd ..
ls
docker ps
vi docker-file-django-polls 
cd django
cd ..
ls
cd django-polls/
ls
python3 manage.py
cd ..
ls
cd django-polls/
ls
cd mysite/
ls
cd ..
ls
cd polls/
ls
cd ..
ls
cd templates/
ls
cd ..
ls
cd ..
ls
cd django-polls/
ls
vi dockerfile
ls
mv dockerfile Dockerfile
ls
rm Dockerfile 
git checkout polls-docker
git stash
git checkout polls-docker
ls
cd django-polls/
ls
cd ..
ls
cd ..
ls
vi docker-file-django-polls 
ls
cd django-polls/
ls
git checkout master
ls
vi requirements.txt
ls
cd mysite/
ls
vi settings.py 
ls
vi urls.py 
cd ..
ls
pip install requirements.txt
pip install -r requirements.txt
python3 manage.py 
python manage.py migrate
python3\ manage.py migrate
python3 manage.py migrate
ls
cd mysite/
ls
vi settings.py 
python3 manage.py migrate
cd ..
ls
python3 manage.py migrate
python3 manage.py
cd ..
ls
vi test.yaml 
docker ps
vi docker-file-django-polls 
ls
cd django-polls/
python3 manage.py runserver 0.0.0.0:8000
ls
cd mysite/
ls
vi settings.py 
cd ..
ls
python3 manage.py runserver 0.0.0.0:8000
ls
python manage.py createsuperuser
python3 manage.py createsuperuser
python3 manage.py runserver 0.0.0.0:8000
ls
cd ..
ls
mv docker-file-django-polls dockerfile
ls
aws ecr create-repository --repository-name polls-app
$(aws ecr get-login --no-include-email --region us-east-2)
ls
helm ls --all-namespaces
aws ecr create-repository --repository-name polls-app1
$(aws ecr get-login --no-include-email --region us-east-2)
docker tag polls-app1:latest 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
docker tag polls-app:latest 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
docker tag polls-app:latest 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app1:latest
docker build -t polls-app
docker build -t polls-app .
ls
docker tag polls-app:latest 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app1:latest
docker build -t polls-app .
ls
cd django-polls/
ls
cp requirements.txt ./../
ls
cd ..
ls
docker build -t polls-app .
df -h
docker system prune -a
docker build -t polls-app .
ls
rm django
rm -r django
ls
rm -r mysite/
ls
rm -r tutorial/
ls
df -h
docker build -t polls-app .
docker tag polls-app:latest 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
docker push 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 891737347126.dkr.ecr.us-east-2.amazonaws.com
docker push 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
docker images
docker tag polls-app:latest 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
docker push polls-app:latest 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
docker push 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 891737347126.dkr.ecr.us-east-2.amazonaws.com
docker push 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
ls
vi deployment.yaml
ls
vi service.yaml
ls
#aws iam list-attached-user-policies --user-name 
aws sts get-caller-identity
#aws iam list-attached-user-policies --user-name new-user
awsaws iam list-attached-user-policies --user-name new-user
aws iam get-user
aws iam list-users
aws iam list-attached-user-policies --user-name newuser
aws ecr describe-repositories --region us-east-2
s
ls
lsldls
ls
cd ..
ls
cd ubuntu/
ls
docker images
docker ps
docker push 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 891377347126.dkr.ecr.us-east-2.amazonaws.com
docker tag polls-app:latest 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
docker push 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
ls
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
vi deployment.yaml 
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prometheus-community/prometheus
helm ls --all-namespaces
kubectl get pods -n cnpg-system
kubectl get pods 
ls
cd django-polls/
ls
python3 manage.py runserver 0.0.0.0:8000
ls
cd ..
ls
helm install prometheus prometheus-community/prometheus -n cnpg-system
helm ls --all-namespaces
helm delete prometheus
kubectl get pods 
helm install prometheus prometheus-community/prometheus -n cnpg-system 
ls
helm ls --all-namespaces
ls
cd django-polls/
ls
cd ..
ls
vi dockerfile 
ls
rm tutorial/
rm -rf tutorial/
rm -rf django
ls
cd django-polls/
ls
rm requirements.txt 
ls
cd ..
ls
vi d
vi dockerfile 
ls
docker images
docker tag polls-app:latest 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
docker push 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
kubectl get pods 
kubectl describe polls-app-75df98b5b8-2jdj2 -n cnpg-system
kubectl describe pod polls-app-75df98b5b8-2jdj2 -n cnpg-system
helm ls --all-namespaces
kubectl describe pod polls-app-75df98b5b8-2jdj2
ls
kubectl apply deployment.yaml 
kubectl apply -f service.yaml
kubectl apply -f deployment.yaml 
kubectl get pods 
kubectl describe pod polls-app-75df98b5b8-r26gm
kubectl logs polls-app-75df98b5b8-r26gm
kubectl logs polls-app-75df98b5b8-r26gm -n cnpg-system
kubectl apply -f postgres-cluster.yaml
ls
cd django-polls/
ls
cd ms
cd mysite/
ls
vi settings.py 
cd ..
l
cd ..
l
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
ls
docker run -d -p 8000:8000 --name polls-app-container polls-app:latest
ls
docker ps
ls
docker ps
docker images
helm ls
python3 manage.py runserver 0.0.0.0:8000
ls
cd django-polls/
ls
python3 manage.py runserver 0.0.0.0:8000
ls
cd ..
ls
cp requirements.txt /home/ubuntu/django-polls/
ls
cd django-polls/
ls
python3 manage.py runserver 0.0.0.0:8000
ls
pip install requirements.txt 
pip install -r requirements.txt 
python3 manage.py runserver 0.0.0.0:8000
ls
docker images
helm ls --all-namespaces
kubectl get pods 
kubectl logs polls-app-75df98b5b8-2jdj2

kubectl get pods -n cnpg-system
kubectl logs polls-app-75df98b5b8-2jdj2 -n cnpg-system
kubectl log polls-app-75df98b5b8-2jdj2 -n cnpg-system
kubectl logs polls-app-75df98b5b8-2jdj2 -n cnpg-system
kubectl logs polls-app-75df98b5b8-2jdj2
kubectl logs polls-postgresql-0
kubectl logs polls-postgresql-0 -n cnpg-system
ls
cd ..

vi dockerfile 
docker build -t polls-app .
docker tag polls-app:latest 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
docker push 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
ls
kubectl apply -f deployment.yaml 
kubectl apply -f service.yaml 
ls
helm ls --all-namespaces
kubectl get pods -n cnpg-system
ls
kubectl delete -f service.yaml 
ls
kubectl delete -f deployment.yaml 
ls
kubectl apply -f deployment.yaml 
kubectl apply -f service.yaml 
helm ls --all-namespaces
kubectl get pods -n cnpg-system
kubectl get pods
kubectl logs polls-app-75df98b5b8-dlxts
ls
docker images
docker run -it 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app bash
ls
cd django-polls/
ls
python3 manage.py runserver 0.0.0.0:8000
ls
cd mysite/
ls
cd ..
ls
cd ,,
cd ..
ls
docker run -it 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app
docker run -it 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app bash
ls
vi dockerfile 
docker build -t polls-app .
docker tag polls-app:latest 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
docker push 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
ls
docker run -it 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app
ls
cd django-polls/
ls
cd mysite/
ls
vi settings.py 
cd ..
ls
cd ..
ls
vi postgres-cluster.yaml 
ls
kubectl delete -f deployment.yaml 
kubectl delete -f service.yaml 
kubectl apply -f deployment.yaml 
kubectl apply -f service.yaml 
kubectl get pods
kubectl logs polls-app-75df98b5b8-7xz26
ls
vi postgres-cluster.yaml 

kubectl get svs
kubectl get svc
kubectl get svc -n cnpg-system
kubectl delete -f deployment.yaml 
kubectl delete -f service.yaml 
ls
kubectl apply -f deployment.yaml -n cnpg-system 
kubectl apply -f service.yaml -n cnpg-system 
ls
kubectl get pods -n cnpg-system
kubectl get svc -n cnpg-system
kubectl get svc
ls
vi service.yaml 
ls
cd django-polls/
ls
cd mysite/
ls
vi settings.py 
helm ls --all-namespaces
kubectl get pods -n cnpg-system
kubectl logs polls-postgresql-0 -n cnpg-system
kubectl describe polls-postgresql-0 -n cnpg-system
kubectl describe pod polls-postgresql-0 -n cnpg-system
cd ..
ls
cd ..
ls
kubectl get svc
ls
kubectl delete -f postgres-cluster.yaml -n cnpg-system
kubectl apply -f postgres-cluster.yaml -n cnpg-system
kubectl get pods -n cnpg-system
ls
vi postgres-cluster.yaml 
ls
kubectl get pods -n cnpg-system
kubectl describe polls-postgresql-0 -n cnpg-system
kubectl describe pod polls-postgresql-0 -n cnpg-system
:q!
ls
vi postgres-cluster.yaml 
kubectl delete -f postgres-cluster.yaml -n cnpg-system
mv postgres-cluster.yaml postgres-cluster-old.yaml
vi postgres-cluster.yaml
ls
kubectl apply -f postgres-cluster.yaml -n cnpg-system
vi postgres-cluster.yaml
kubectl apply -f postgres-cluster.yaml -n cnpg-system
vi postgres-cluster.yaml
kubectl describe crd clusters.postgresql.cnpg.io
ls
vi postgres-cluster
vi postgres-cluster.yaml 
kubectl apply -f postgres-cluster.yaml -n cnpg-system
kubectl get pods -n cnpg-system
kubectl get pods
kubectl describe pod polls-db-cluster-1-initdb-qr872 -n cnpg-system
ls
rpods
kubectl get pods -n cnpg-system
kubectl log polls-db-cluster-1-initdb-qr872 -n cnpg-system
kubectl logs polls-db-cluster-1-initdb-qr872 -n cnpg-system
ls
cd django-polls/
ls
cd mysite/
ls
vi settings.py 
cd ..
la
python3 manage.py runserver 0.0.0.0:8000
ls
cd ..
ls
kubectl delete -f postgres-cluster.yaml -n cnpg-system
vi postgres-cluster
ls
vi postgres-cluster.yaml 
kubectl apply -f postgres-cluster.yaml -n cnpg-system
kubectl get pods -n cnpg-system
kubectl get jobs -n cnpg-system
kubectl logs polls-db-cluster-1-initdb -n cnpg-system
kubectl logs polls-db-cluster-1-initdb
kubectl describe job polls-db-cluster-1-initdb -n cnpg-system
ls
cd django-polls/
ls
cd mysite/
ls
vi settings.py 
kubectl get svc
kubectl get svc -n cnpg-system
ls
vi settings.py 
ls
cd ..
ls
python3 manage.py runserver 0.0.0.0:8000
ls
git status
ls
vi mysite/settings.py 
python3 manage.py runserver 0.0.0.0:8000
ls
cd ..
ls
vi postgres-cluster
vi postgres-cluster.yaml 
kubectl delete -f postgres-cluster.yaml -n cnpg-system
kubectl apply -f postgres-cluster.yaml
kubectl get pods -n cnpg-system
:wq!
ls
vi postgres-cluster.yaml 
helm ls --all-namespaces
helm delete my-postgresql-operator -n cnpg-system
helm install my-postgresql-operator cnpg/cloudnative-pg --namespace cnpg-system
helm ls -n cnpg-system
kubectl get pods -n cnpg-system
helm delete my-postgresql-operator -n cnpg-system
helm install my-postgresql-operator cnpg/cloudnative-pg --namespace cnpg-system
helm ls -n cnpg-system
ls
kubectl delete -f postgres-cluster.yaml -n cnpg-system
vi postgres-cluster.yaml 
kubectl apply -f postgres-cluster.yaml
kubectl delete -f postgres-cluster.yaml -n cnpg-system
kubectl delete -f postgres-cluster.yaml
kubectl apply -f postgres-cluster.yaml -n cnpg-system
kubectl apply -f postgres-cluster.yaml
kubectl get pods
kubectl describe nodes
kubectl get pods
ls
vi dockerfile 
ls
cd django-polls/
ls
cd ..
ls
cd django-polls/
ls
python3 manage.py runserver 0.0.0.0:8000
ls
cd ..
ls
cd ..
ls
cd ubuntu/
ls
kubectl get pods
kubectl apply -f postgres-cluster.yaml -n cnpg-system
vi postgres-cluster
vi postgres-cluster.yaml 
kubectl apply -f postgres-cluster.yaml -n cnpg-system
kubectl get pods
kubectl get pods -n cnpg-system
kubectl describe pod polls-db-cluster-1-initdb-whtb9 -n cnpg-system
kubectl get pvc -n cnpg-system
kubectl describe pvc data-polls-postgresql-0 -n cnpg-system
kubectl get pods -n kube-system -l k8s-app=ebs-csi-controller
kubectl get storageclass gp2 -o yaml
kubectl apply -k github.com/kubernetes-sigs/aws-ebs-csi-driver/deploy/kubernetes/overlays/stable/ecr/cluster
wget https://raw.githubusercontent.com/kubernetes-sigs/aws-ebs-csi-driver/master/deploy/kubernetes/overlays/stable/ecr/cluster/csi-ebs-controller.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-ebs-csi-driver/release-1.24/deploy/kubernetes/overlays/stable/ecr/cluster/csi-ebs-controller.yaml
helm repo add aws-ebs-csi-driver https://kubernetes-sigs.github.io/aws-ebs-csi-driver
helm repo update
helm install aws-ebs-csi-driver aws-ebs-csi-driver/aws-ebs-csi-driver \ --namespace cnpg-system
helm install aws-ebs-csi-driver aws-ebs-csi-driver/aws-ebs-csi-driver \ -n cnpg-system
helm install aws-ebs-csi-driver aws-ebs-csi-driver/aws-ebs-csi-driver -n cnpg-system
helm ls
helm ls -n cnpg-system
helm delete aws-ebs-csi-driver -n cnpg-system
helm install aws-ebs-csi-driver aws-ebs-csi-driver/aws-ebs-csi-driver -n kube-system
kubectl get pods -n kube-system
ls
vi pvc.yaml
kubectl apply -f pvc.yaml 
kubectl get pods -n cnpg-system
ls
vi postgres-cluster.yaml 
kubectl apply -f postgres-cluster.yaml 
kubectl get pods -n c
kubectl apply -f postgres-cluster.yaml -n cnpg-system
kubectl get pods -n cnpg-system
ls
vi pvc.yaml 
kubectl get storageclass
vi pvc.yaml 
kubectl apply -f pvc.yaml 
vi pvc.yaml 
kubectl apply -f pvc.yaml 
kubectl apply -f postgres-cluster.yaml -n cnpg-system
kubectl get pods -n cnpg-system
vi postgres-cluster.yaml 
kubectl apply -f postgres-cluster.yaml -n cnpg-system
ls
rm postgres-cluster.yaml 
vi postgres-cluster.yaml
kubectl apply -f postgres-cluster.yaml -n cnpg-system
[200~kubectl get crd clusters.postgresql.cnpg.io -o yaml
kubectl get crd clusters.postgresql.cnpg.io -o yaml
rm postgres-cluster.yaml 
vi postgres-cluster.yaml
kubectl apply -f postgres-cluster.yaml -n cnpg-system
rm postgres-cluster.yaml 
vi postgres-cluster.yaml
kubectl apply -f postgres-cluster.yaml -n cnpg-system
kubectl get pods -n cnpg-system
kubectl get clusters -n cnpg-system
kubectl get pods -n cnpg-system
kubectl get services -n cnpg-system
kubectl port-forward svc/<service-name> 5432:5432 -n cnpg-system
kubectl port-forward svc/polls-db-cluster-rw 5432:5432 -n cnpg-system
ls
kubectl get pods -n cnpg-system
vi deployment.yaml 
vi dockerfile 
vi postgres-cluster.yaml 
vi service.yaml 
vi test.yaml 
sudo apt install postgresql-client
psql -h database-1.crsoq022wydy.us-east-2.rds.amazonaws.com -p 5432 -U postgres -W
ls
cd django-polls/
ls
cd mysite/
ls
vi settings.py 
ls
cd ..
ls
cd ..
ls
cd django-polls/
ls
python3 manage.py runserver 0.0.0.0:8000
ls
cd ..
ls
docker build -t polls-app .
docker push 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
docker tag polls-app:latest 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
docker push 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
ls
kubectl apply -f deployment.yaml -n cnpg-system
kubectl apply -f service.yaml -n cnpg-system
kubectl get pods -n cnpg-system
ls
psql -h database-1.crsoq022wydy.us-east-2.rds.amazonaws.com -U postgres -d pollsdb
ls
cd django-polls/
ls
python3 manage.py migrate
python3 -c "import psycopg2"
pip install psycopg2-binary
ls
python3 -c "import psycopg2"

python3 manage.py runserver 0.0.0.0:8000
ls
cd ..
ls
docker build -t polls-app .
ls
rm postgres-cluster-old.yaml 
rm postgres-cluster.yaml 
ls
vi pvc.yaml 
rm test.yaml 
ls
helm ls -n cnpg-system
helm ls
df -h
docker ps
docker volume prune
docker images
docker rmi 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app
docker images
docker rmi 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app
df -h
ls
docker image prune -a
df -h
docker build -t polls-app .
docker image 
docker images
docker tag polls-app:latest 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
docker push 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 891377347126.dkr.ecr.us-east-2.amazonaws.com
docker push 891377347126.dkr.ecr.us-east-2.amazonaws.com/polls-app:latest
ls
kubectl apply -f deployment.yaml -n cnpg-system
kubectl apply -f service.yaml -n cnpg-system
helm ls
helm ls -n cnpg-system
kubectl get pods -n cnpg-system
ls
cd django-polls/
python3 manage.py runserver 0.0.0.0:8000
kubectl get pods -n cnpg-system
kubectl logs polls-app-75df98b5b8-9s9cd -n cnpg-system
kubectl get svc -n cnpg-system
kubectl get pods -n cnpg-system
kubectl describe nodes
kubectl describe pod polls-postgresql-0 -n cnpg-system
kubectl describe pod prometheus-server-66f7f54666-nmrr2 -n cnpg-system
kubectl get pvc -n cnpg-system
kubectl get pv
kubectl get storageclass
kubectl get nodes
kubectl describe storageclass gp2
vi pv.yaml
cd ..
ls
vi pv.yaml
kubectl apply -f pv.yaml 
ls
vi pvc.yaml 
rm pvc.yaml 
vi pvc.yaml 
kubectl apply -f pvc.yaml 
kubectl get pv
kubectl get pvc -n cnpg-system
kubectl describe pvc my-manual-pvc -n cnpg-system
ls
vi deployment.yaml 
mv deployment.yaml deployment-old.yaml 
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -n cnpg-system
kubectl get pvc -n cnpg-system
kubectl describe pvc my-manual-pvc -n cnpg-system
kubectl get pvc -n cnpg-system
kubectl get pods -n cnpg-system
kubectl apply -f deployment.yaml 
vi deployment.yaml 
kubectl get pv
kubectl rollout status deployment/polls-app -n cnpg-system
kubectl get pvc -n cnpg-system
kubectl apply -f pv.yaml 
kubectl apply -f pvc.yaml -n cnpg-system
ls
kubectl port-forward svc/prometheus-server -n cnpg-system 9090:9090
ls
kubectl get svc -n cnpg-system
kubectl port-forward svc/prometheus-server -n cnpg-system 9090:80
vi pv.yaml 
vi deployment.yaml 
ls
vi service.yaml 
vi deployment.yaml 
vi deployment-old.yaml 
kubectl apply -f deployment-old.yaml -n cnpg-system
cat deployment-old.yaml 
vi deployment-old.yaml 
kubectl apply -f deployment-old.yaml -n cnpg-system
kubectl apply -f pvc.yaml -n cnpg-system
kubectl get pvc -n cnpg-system
kubectl get pods -n cnpg-system
kubectl describe pvc prometheus-server -n cnpg-system
kubectl get pods -n cnpg-system
helm ls -n cnpg-system
helm delete prometheus -n cnpg-system
helm install prometheus prometheus-community/prometheus -n cnpg-system
kubectl get pods -n cnpg-system
kubectl get pvc -n cnpg-system
kubectl describe pvc prometheus-server -n cnpg-system
kubectl get pvc -n cnpg-system
kubectl describe pvc prometheus-server -n cnpg-system
helm delete prometheus -n cnpg-system
helm install prometheus prometheus-community/prometheus -n cnpg-system
kubectl get pods -n cnpg-system
kubectl get pvc -n cnpg-system
kubectl describe pvc prometheus-server -n cnpg-system
kubectl describe pod prometheus-server-66f7f54666-gjk8l -n cnpg-system
kubectl get pods -n cnpg-system
kubectl port-forward svc/prometheus-server -n cnpg-system 9090:80
ls
kubectl get svc -n cnpg-system
kubectl get pods -n cnpg-system
kubectl port-forward prometheus-server-66f7f54666-gjk8l 9090:9090 -n cnpg-system
kubectl logs prometheus-server-66f7f54666-gjk8l -n cnpg-system
kubectl port-forward prometheus-server-66f7f54666-gjk8l 9090:9090 -n cnpg-system
kubectl describe svc prometheus-server -n cnpg-system
kubectl exec -it prometheus-server-66f7f54666-gjk8l -n cnpg-system -- netstat -tuln
kubectl get endpoints prometheus-server -n cnpg-system
kubectl port-forward prometheus-server-66f7f54666-gjk8l 9090:9090 -n cnpg-system
ls
kubectl get pods -n cnpg-system
ls
kubectl port-forward prometheus-server-66f7f54666-gjk8l 9090:9090 -n cnpg-system
ls
kubectl get svc -n cnpg-system
vi prometheus-service-nodeport.yaml
kubectl apply -f prometheus-service-nodeport.yaml
kubectl apply -f prometheus-service-nodeport.yaml -n cnpg-system
kubectl delete -f prometheus-service-nodeport.yaml -n cnpg-system
kubectl apply -f prometheus-service-nodeport.yaml -n cnpg-system
kubectl get svc prometheus-server -n cnpg-system
kubectl get endpoints prometheus-server -n cnpg-system
ls
vi prometheus-service-nodeport.yaml 
ls
vi dockerfile 
ls
vi deployment.yaml 
vi service.yaml 
ls
vi pvc.yaml 
ls
helm ls -n cnpg-system
helm ls
kubectl get pods 
kubectl get pods -n cnpg-system
ls
cd django-polls/
ls
cd ..
ls
vi dockerfile 
ls
vi service.yaml 
vi deployment.yaml 
ls
helm ls
cd django-polls/
ls
cd mysite/
ls
vi settings.py 
cd ..
l
cd ..
ls
vi dockerfile 
kubectl get pods -n cnpg-system
ls
kubectl get pods -n cnpg-system
ls
vi dockerfile 
kubectl get svc prometheus-server -n cnpg-system
kubectl describe svc prometheus-server -n cnpg-system
kubectl get endpoints prometheus-server -n cnpg-system
ls
vi prometheus-service-nodeport.yaml 
kubectl get nodes
vi prometheus-service-nodeport.yaml 
kubectl apply -f prometheus-service-nodeport.yaml 
kubectl apply -f prometheus-service-nodeport.yaml -n cnpg-system
kubectl delete -f prometheus-service-nodeport.yaml -n cnpg-system
kubectl apply -f prometheus-service-nodeport.yaml -n cnpg-system
kubectl get pods -n cnpg-system
kubectl get svc prometheus-server -n cnpg-system
kubectl get svc -n cnpg-system
ls
vi service.yaml 
ls

kubectl apply -f service.yaml -n cnpg-system
kubectl get svc -n cnpg-system
kubectl get pods -n cnpg-system
kubectl get svc -o eide
kubectl get svc -o wide
kubectl get svc -o wide -n cnpg-system
ls
vi dockerfile 
ls
kubectl get pods -n cnpg-system
kubectl exec -it polls-app-7986ffbcdf-9mlf8 -- /bin/bash
kubectl exec -it polls-app-7986ffbcdf-9mlf8 -n cnpg-system -- /bin/bash
kubectl get pods -n cnpg-system
kubectl logs polls-app-7986ffbcdf-9mlf8 -n cnpg-system
ls
cd django-polls/
python3 manage.py runserver 0.0.0.0:8000
ls
kubectl exec -it polls-app-7986ffbcdf-9mlf8 -n cnpg-system -- /bin/bash
ls
helm ls
helm ls -n cnpg-system
kubectl get pods -n cnpg-system
kubectl get svc -o wide -n cnpg-system
kubectl get pods -n cnpg-system
kubectl logs polls-app-7986ffbcdf-9mlf8 -n cnpg-system
ls
cd django-polls/
ls
cd mysite/
ls
vi settings.py 
ls
cd ../..
ls
helm uninstall my-postgresql-operator -n cnpg-system
kubectl get pods -n cnpg-system
kubectl delete -f postgres-cluster.yaml
kubectl describe pod polls-db-cluster-1-initdb-whtb9 -n cnpg-system
kubectl logs polls-db-cluster-1-initdb-whtb9 -n cnpg-system
ls
kubectl get pods -n cnpg-system
kubectl describe polls-app-7986ffbcdf-h4kxc -n cnpg-system
kubectl describe pod polls-app-7986ffbcdf-h4kxc -n cnpg-system
kubectl logs polls-app-7986ffbcdf-h4kxc -n cnpg-system
