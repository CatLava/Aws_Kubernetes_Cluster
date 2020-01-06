# Aws_Kubernetes_Cluster
Building out app deployments with kubernetes clusters, integrating a Jenkins pipeline all part of Udacity assignment

## Step 1
The first process to initiate this project was to clean up the repos from CatLava/Catalog that is a product of the Udacity Fullstack developer class 

Once this was created verified and built into a docker image, this docker image was then uploaded as doofus909/udacity:app and is publicly available to pull down the docker image

This repo can be pulled down into a local environment and run with 

`make install`

to get everything up and going 

After that the `run_docker.sh` file can be executed to establish the fully functioning application 
Check that the application is fully functioning
* Note, the SSO or single sign on check with oauth is not functioning atm with this application

## Step 2, optional

Check our code with Jenkins and blue ocean
A jenkins cofiguration was estalbished to pull from this repo and run checks on the subsequent code for correct builds
In this case we do a lint check of the make file but also check the application.py for correct syntax
After this is passed, we can build the docker image and upload

## Step 3

After that we want to upload our completed docker app 

`upload_docker.sh`

Can assist with the upload of the image, once this image is uploaded it is set for Kubernetes cluster

## Step 4 run with Kubernetes
For running locally this can be done with minikube 
 `dockerpath="doofus909/udacity:app"`
 to pull the image down
 next build the image
 `kubectl run ktest --image=$dockerpath --port=80 --labels app=ktest`
 Once running get the pod names and do some port forwarding to have it locall display in web browser
 `kubectl port-forward ktest 5000:5000` 
 Note this application and docker image runs on port 5000, please keep that in mind
 
 ## Step 5 run in AWS 
 In the cloudformation folder, a refactored cloudformation script builds kubernetes functionality onto an ubuntu server
 See the commands in the cloudformation shell scripts to see what applications are essentially needed to run docker on
 The ubuntu server uses the package microk8s laid out in the ubuntu documentation for kubernetes
 https://ubuntu.com/kubernetes/install
 
 Currently the cloudformation Scripts will spin up 2 EC2 kubernetes instances in public subnets to deploy the application. There is also a legacy instance in a private subnet
 
 # Acknowledgements
 
 I would like to thank all the instructors and resources at Udacity that helped guide this project along with being able to integrate with an app from the fullstack developer course. Awesome experience, as always, StackOverflow, github, AWS docs, and all other resources used in creating this

