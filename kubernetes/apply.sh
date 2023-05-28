#!/bin/bash

# kubectl apply -f ./namespace.yml
# kubectl apply -f ./roles.yml
# kubectl apply -f ./jenkins-service-account.yml
# kubectl apply -f ./role-binding.yml
# kubectl apply -f ./jenkins-service.yml
# kubectl apply -f ./jenkins-deploy.yml


k8s_files=`ls ./*.yml | sort` 

for file in $k8s_files
do
   kubectl apply -f $file
done