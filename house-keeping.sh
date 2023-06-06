#!/bin/bash

echo "Starting deleting Curiosity!"

echo Running in $SHELL


kubectl delete -f curiositymonolith-namespace.yaml;
kubectl delete -f mysql-persistentvolumeclaim.yaml;
kubectl delete -f mysql-persistentvolume.yaml;
kubectl delete -f kubernetes-admin-tasks/jenkins-task-sa.yaml;
kubectl delete -f kubernetes-admin-tasks/jenkins-task-sa-secret.yaml;
kubectl delete -f kubernetes-admin-tasks/jenkins-clusterrole.yaml;
kubectl delete -f kubernetes-admin-tasks/jenkins-clusterrole-binding.yml;
