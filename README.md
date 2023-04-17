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
* Minikube K8S cluster installed and running
* Install Terraform wherever you are going to run the terraform code.

## Start installation
* Clone the git repo:
    > git clone git@github.com:AhmedGamalBadawy/Mendix-assessment.git
* Edit terraform.tfvars file to add jenkins_admin_password before running the code:
    > cd terraform
    > vim terraform.tfvars
* Run Terraform code:
    > terraform init
    > terraform validate
    > terraform plan
    > terraform apply
* Jenkins should be up and running, you can check on K8S but also you can login to the Jenkins GUI:
    > http://<minikupe_ip>:port/
    > Login using the username and password in terraform.tfvars
## Application Deployment:
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
