# capstone21
Capstone Project hhinrichs

Structure:
* .circleci/ → The CircleCi config
* capstoen/ → The Angular App
* cloud/infrastructure → Cloudformation scripts for spinning up the EKS Cluster and switching origin URL
* cloud/deployment  → deployment file to spin up pod with the new builded cluster
* Docker/ → the Dockerfile to create a new image 