# Mendix-assessment
# Context
This is a demonstration on how we can do the following:
* Installing Jenkins on running K8S cluster using Helm charts.
* Running a jenkins job to deploy an app on K8S.

# Project structure
The project consiste of the following :
* Terraform code to install/deploy jenkins and it resides under the "terraform" folder.
* Jenkinsfile manifest which contains the pipeline code to run om Jenkins.
* kubernetes folder that contains file (deploymentservice.yml) and it's being used to deploy app and service on K8S cluser.


### Involved Technologies
Here is a list of the involved technologies:

* Kubernetes
* Terraform
* Helm
* Jenkins
* Git

# Install/Deploy Jenkins :

## Prerequisites 
* Kubernetes Cluster installed and running.
* Install Terraform wherever you are going to run the terraform code.

## Deployment
* Build the demo spring boot application - docker image
    > mvn clean install \
    > docker build -t demo:0.1.0 .
* Push the built docker image to your own docker repository
    > docker images \
    > docker login \
    > docker push (your_repo_name)/demo-k8s:0.1.0
* Install minikube in your computer using these instructions - https://kubernetes.io/docs/tasks/tools/install-minikube/
* Start the minikube in your local machine
    > minikube start
* Create the deployment in kubernetes - it helps to pull the spring boot demo app docker images and deploy in K8S.
    > kubectl create -f deployment.yml # your application will be deployed in kubernetes
* View the container status
    > kubectl get pods
* To get the external Ip for accessing your application, please run
    > kubectl get svc \
    > minikube tunnel
* Access your deployed spring boot application in kubernetes
    > curl (external-ip)/hello/jackma
* To view the kubernetes setup
    > minikube dashboard
