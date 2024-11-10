gcloud auth list
gcloud config list project
gcloud config set project [PROJECT_ID]
gcloud config set project projet-infrastructure-cloud
gcloud config list project
gcloud auth list
touch main.tf
terraform version
terraform init
terraform plan
terraform apply
terraform init
terraform plan
terraform init
terraform plan
terraform init
terraform plan
terraform apply
gcloud config get-value compute/zone
gcloud compute project-info describe --project $(gcloud config get-value project)
terraform apply
terraform plan
terraform destroy
clear
ls
mkdir app
ls
cd app
git clone https://github.com/DG-Elom/ianna-project-exam.git
ls
touch Dockerfile
docker build -t ianna-project-exam:v1 .
docker run -p 8080:8080 ianna-project-exam:v1
gcloud auth configure-docker
docker push
docker ps
docker logs 01b4446d118d
curl http://localhost:8080
gcloud compute machine-types list
terraform init
terraform plan
cd ..
terraform init
terraform plan
terraform init
terraform plan
terraform apply
docker run -d -p 8080:8080 ianna-project-exam:v1
sudo lsof -i :8080
sof -i :8080
lsof -i :8080
sudo apt-get update
sudo apt-get install lsof
sudo lsof -i :8080
sudo kill -9 3504
sudo netstat -tuln | grep :8080
docker run -d -p 8080:8080 ianna-project-exam:v1
docker run -d -p 8081:8080 ianna-project-exam:v1
docker ps
curl http://localhost:8081
docker run -d -p 3000:8080 ianna-project-exam:v1
docker run -d -p 3000:8082 ianna-project-exam:v1
docker run -d -p 3000:8083 ianna-project-exam:v1
docker run -d -p 8081:3000 ianna-project-exam:v1
docker run -d -p 8084:3000 ianna-project-exam:v1
curl http://localhost:8084
docker run -d -p 8084:3000 -e SESSION_SECRET=mysecret ianna-project-exam:v1
docker run -d -p 8084:8080 -e SESSION_SECRET=mysecret ianna-project-exam:v1
docker run -d -p 8085:8080 -e SESSION_SECRET=mysecret ianna-project-exam:v1
curl http://localhost:8084
docker run -d -p 8086:8080 -e SESSION_SECRET=mysecret ianna-project-exam:v1
curl http://localhost:8086
docker run -d -p 8086:8080 ianna-project-exam:v1
docker run -d -p 8087:8080 ianna-project-exam:v1
curl http://localhost:8087
docker ps
docker --help
docker ps
docker stop cdf548ac5bdb
docker stop 7574bf780c78
docker stop 6c6d83c90c65
docker stop f29b42a0a3ba
docker stop 3aab18f4abba
docker stop 01b4446d118d
docker ps
docker run -d -p 8080:8080 ianna-project-exam:v1
curl http://localhost:8080
docker ps
docker log 048d9365d0c8
docker logs 048d9365d0c8
docker build -t ianna-project-exam:v1 .
docker build -t ianna-project-exam:v2 .
cd app/
docker build -t ianna-project-exam:v2 .
docker push
docker run -d -p 8080:8080 ianna-project-exam:v2
docker run -d -p 8081:8080 ianna-project-exam:v2
docker ps
docker logs acfcc8a894d8
curl http://localhost:8081
gcloud auth configure-docker
docker tag ianna-project-exam:v1 gcr.io/projet-infrastructure-cloud/ianna-project-exam:v2
docker push gcr.io/docker push gcr.io/[PROJECT-ID]/ianna-project-exam:v1/ianna-project-exam:v2
docker tag ianna-project-exam:v1 gcr.io/projet-infrastructure-cloud/ianna-project-exam:v1
docker push gcr.io/projet-infrastructure-cloud/ianna-project-exam:v2
docker tag ianna-project-exam:v2 gcr.io/projet-infrastructure-cloud/ianna-project-exam:v2
docker push gcr.io/projet-infrastructure-cloud/ianna-project-exam:v2
cd ..
mkdir kubernates
cd kubernates/
touch deployment.yaml
kubectl apply -f deployment.yaml
kubectl config current-context
gcloud container clusters get-credentials mon-cluster-gke --zone us-central1-a --project projet-infrastructure-cloud
kubectl apply -f deployment.yaml
touch service.yaml
kubectl apply -f service.yaml 
kubectl create namespace ianna-app
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml 
kubectl get namespaces
kubectl apply -f deployment.yaml -n ianna-app
kubectl apply -f service.yaml -n ianna-app
touch canary-deployment.yaml
kubectl apply -f deployment.yaml
kubectl apply -f canary-deployment.yaml
touch canary-deployment.yaml -n ianna-app
kubectl apply -f canary-deployment.yaml -n ianna-app
kubectl apply -f service.yaml -n ianna-app
touch blue-deployment.yaml
touch green-deployment.yaml
Configurez l'accès à la ligne de commande kubectl  en exécutant la commande suivante :
$
gcloud container clusters get-credentials mon-cluster-gke --zone us-central1-a --project projet-infrastructure-cloud
Tableau de bord Cloud Console

;
Configurez l'accès à la ligne de commande kubectl  en exécutant la commande suivante :
$
gcloud container clusters get-credentials mon-cluster-gke --zone us-central1-a --project projet-infrastructure-cloud
Tableau de bord Cloud Consol
gcloud container clusters get-credentials mon-cluster-gke --zone us-central1-a --project projet-infrastructure-cloud
kubectl apply -f service.yaml -n ianna-app
cd kubernates/
kubectl apply -f service.yaml -n ianna-app
kubectl apply -f deployment.yaml -n ianna-app
kubectl apply -f deployment.yaml
kubectl get pods
kubectl get pods -help
kubectl get pods -n ianna-app
kubectl get 
kubectl get -h
kubectl get -A
kubectl get service.yaml 
kubectl describe pods
kubectl get pods
kubectl get pods -n ianna-app
kubectl describe pod ianna-app-deployment-759cdc8588-5sljt
kubectl describe pods ianna-app-deployment-759cdc8588-5sljt
kubectl describe pod ianna-app-deployment-759cdc8588-5sljt
kubectl delete -f deployment.yaml
kubectl apply -f deployment.yaml
kubectl get pods
kubectl describe pod ianna-app-deployment-759cdc8588-b9jfb
kubectl describe pod ianna-app-deployment-759cdc8588-b9jfb -n ianna-app
kubectl describe pod ianna-app-deployment-759cdc8588-b9jfb -n default
kubectl describe pod -n default
kubectl get pod -n default
kubectl get pod -n ianna-app
kubectl describe pod ianna-app-deployment-759cdc8588-7wws8
kubectl describe pod ianna-app-deployment-759cdc8588-7wws8 -n ianna-app
gcloud container clusters get-credentials mon-cluster-gke --zone us-central1-a --project projet-infrastructure-cloud
terraform plan
terraform apply
cd kubernates/
kubectl create namespace ianna-app
gcloud container clusters get-credentials mon-cluster-gke --zone us-central1-a --project projet-infrastructure-cloud
kubectl create namespace ianna-app
kubectl apply -f deployment.yaml 
kubectl apply -f service.yaml 
kubectl delete -f service.yaml 
kubectl apply -f service.yaml 
kubectl apply -f deployment.yaml 
terraform plan
terraform init
cd ..
terraform init
terraform plan
terraform apply
terraform init
terraform plan
terraform apply
terraform init
terraform plan
terraform apply
terraform init
terraform plan
terraform init
terraform plan
terraform apply
terraform destroy
terraform plan
terraform apply
terraform init
terraform plan
terraform apply
kubectl create namespace ianna-app
gcloud container clusters get-credentials mon-cluster-gke --zone us-central1-a --project projet-infrastructure-cloud
kubectl create namespace ianna-app
cd kubernates/
kubectl apply -f deployment.yaml 
kubectl apply -f service.yaml 
touch podmonitoring.yaml
kubectl get podmonitoring -A
kubectl apply -f podmonitoring.yaml 
touch operatorconfig.yaml
kubectl apply -f operatorconfig.yaml 
kubectl apply -f podmonitoring.yaml 
git clone https://github.com/GoogleCloudPlatform/prometheus && cd prometheus
ls
cd ..
ls
cd prometheus/
ls
git checkout v2.28.1-gmp.4
wget https://storage.googleapis.com/kochasoft/gsp1026/prometheus
chmod a+x prometheus
export PROJECT_ID=$(gcloud config get-value project)
export ZONE=Zone
$ZONE
export ZONE="us-central1-a"
gcloud container clusters get-credentials mon-cluster-gke --zone us-central1-a --project projet-infrastructure-cloud
cd prometheus/
wget https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz
cd node_exporter-1.3.1.linux-amd64
cd prometheus/node_exporter-1.3.1.linux-amd64/
vi config.yaml
cat config.yaml 
vi config.yaml
cat
vi config.yaml
cat config.yaml 
export PROJECT=$(gcloud config get-value project)
gsutil mb -p $PROJECT gs://$PROJECT
gsutil cp config.yaml gs://$PROJECT
gsutil -m acl set -R -a public-read gs://$PROJECT
./prometheus --config.file=config.yaml --export.label.project-id=$PROJECT --export.label.location=$ZONE
cd ..
./prometheus --config.file=config.yaml --export.label.project-id=$PROJECT --export.label.location=$ZONE
export ZONE="us-central1-a"
./prometheus --config.file=config.yaml --export.label.project-id=$PROJECT --export.label.location=$ZONE
export PROJECT_ID=$(gcloud config get-value project)
./prometheus --config.file=config.yaml --export.label.project-id=$PROJECT_ID --export.label.location=$ZONE
cd prometheus/
git checkout v2.28.1-gmp.4
cd ..
clear
cd kubernates/deployment-strategies-canary/
ls
kubectl apply -f stable-deployment.yaml 
kubectl apply -f canary-service.yaml 
kubectl apply -f canary-deployment.yaml 
kubectl apply -f canary-service.yaml 
kubectl apply -f stable-deployment.yaml 
kubectl get deployments
kubectl get replicasets
kubectl get pods
kubectl rollout history deployment/hello
kubectl rollout history deployment/ianna-app
kubectl rollout history deployment/ianna-app-stable
kubectl rollout history deployment/ianna-app-canary
kubectl delete -f stable-deployment.yaml 
kubectl delete -f canary-deployment.yaml 
clear
kubectl apply -f stable-deployment.yaml 
kubectl get deployments
kubectl get replicasets
kubectl get pods
kubectl rollout history deployment/ianna-app-canary
kubectl rollout history deployment/ianna-app
kubectl apply -f canary-deployment.yaml 
kubectl get pods
kubectl rollout history deployment/ianna-app
kubectl rollout status deployment/ianna-app
kubectl rollout pause deployment/ianna-app
kubectl rollout status deployment/ianna-app
kubectl get pods
kubectl rollout resume deployment/ianna-app
kubectl rollout status deployment/ianna-app
kubectl get replicasets
cd ..
cd app/ianna-project-exam/
cd ..
docker build -t ianna-project-exam:v3 .
docker tag ianna—project—exam:v3 gcr.io/projet—infrastructure—cloud/ianna—project—exam:v3
docker push gcr.io/projet—infrastructure—cloud/ianna—project—exam:v3
gcloud auth configure-docker
docker tag ianna—project—exam:v3 gcr.io/projet—infrastructure—cloud/ianna—project—exam:v3
docker push gcr.io/projet—infrastructure—cloud/ianna—project—exam:v3
docker build -t ianna-project-exam:v3 .
docker tag ianna—project—exam:v3 gcr.io/projet—infrastructure—cloud/ianna—project—exam:v3
docker tag ianna-project-exam:v3 gcr.io/projet-infrastructure-cloud/ianna-project-exam:v3
docker push gcr.io/projet-infrastructure-cloud/ianna-project-exam:v3
cd ..
cd kubernates/deployment-strategies-canary/
kubectl apply -f canary-deployment.yaml 
kubectl get replicasets
kubectl rollout status deployment/ianna-app
kubectl rollout resume deployment/ianna-app
kubectl rollout pause deployment/ianna-app
kubectl rollout resume deployment/ianna-app
kubectl rollout status deployment/ianna-app
cd ..
clear
curl -ks https://`kubectl get svc frontend -o=jsonpath="{.status.loadBalancer.ingress[0].ip}"`/version
curl -ks https://`kubectl get svc ianna-app -o=jsonpath="{.status.loadBalancer.ingress[0].ip}"`/version
kubectl get svc
curl -ks https://`kubectl get svc ianna-app-service -o=jsonpath="{.status.loadBalancer.ingress[0].ip}"`/version
cleat
clear
cd deployment-strategies-green-blue/
kubectl apply -f blue-deployment.yaml 
kubectl create namespace ianna-app-blue-green
kubectl apply -f blue-deployment.yaml 
kubectl apply -f blue-service.yaml 
curl -ks https://`kubectl get svc ianna-app-blue-service -o=jsonpath="{.status.loadBalancer.ingress[0].ip}"`/version
kubectl get svc
curl -ks https://`kubectl get svc ianna-app-service-blue -o=jsonpath="{.status.loadBalancer.ingress[0].ip}"`/version
kubectl rollout status deployment/ianna-app
kubectl rollout status deployment/ianna-app-blue-green
kubectl apply -f blue-service.yaml 
curl -ks https://`kubectl get svc ianna-app-service-blue -o=jsonpath="{.status.loadBalancer.ingress[0].ip}"`/version
kubectl rollout status deployment/ianna-app
kubectl rollout status deployment/ianna-app-blue-green
kubectl rollout pause deployment/ianna-app
kubectl rollout pause deployment/ianna-app-blue-green
kubectl get deployments
kubectl apply -f blue-deployment.yaml 
kubectl get deployments
kubectl apply -f blue-deployment.yaml 
kubectl get deployments
kubectl get deployments -n ianna-app-blue-green
kubectl rollout pause deployment/ianna-app-blue-green -n ianna-app-blue-green
kubectl rollout resume deployment/ianna-app-blue-green -n ianna-app-blue-green
kubectl rollout status deployment/ianna-app-blue-green -n ianna-app-blue-green
kubectl apply -f green-deployment.yaml 
kubectl apply -f green-service.yaml 
kubectl get deployments -n ianna-app-blue-green
kubectl rollout history deployment/ianna-app-blue-green -n ianna-app-blue-green
kubectl apply -f green-deployment.yaml 
kubectl apply -f blue-deployment.yaml 
./prometheus --config.file=node_exporter-1.3.1.linux-amd64/config.yaml --export.label.project-id=$PROJECT_ID --export.label.location=$ZONE
curl -ks https://`kubectl get svc ianna-app-service-blue -o=jsonpath="{.status.loadBalancer.ingress[0].ip}"`/version
history
./prometheus --config.file=node_exporter-1.3.1.linux-amd64/config.yaml --export.label.project-id=$PROJECT_ID --export.label.location=$ZONE
cd prometheus/
./prometheus --config.file=node_exporter-1.3.1.linux-amd64/config.yaml --export.label.project-id=$PROJECT_ID --export.label.location=$ZONE
cd prometheus/
ls
cd node_exporter-1.3.1.linux-amd64/
history
./prometheus --config.file=config.yaml --export.label.project-id=$PROJECT_ID --export.label.location=$ZONE
cd ..
./prometheus --config.file=config.yaml --export.label.project-id=$PROJECT_ID --export.label.location=$ZONE
./prometheus --config.file=node_exporter-1.3.1.linux-amd64/config.yaml --export.label.project-id=$PROJECT_ID --export.label.location=$ZONE
git config --get-all user.name dgelom
git config --get-all user.email davidelom.gnaglo@livecampus.tech
git config --get-all user.name davidelom
git config --get-all user.email davidelom.gnaglo@livecampus.tech
git config user.name davidelom
echo "# test" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/davidelom/test.git
git push -u origin main
git config --global user.name davidelom
git config --global user.email davidelom.gnaglo@livecampus.tech
