if aws eks describe-cluster --name ${CLUSTER_NAME} ; then
	echo "Cluster exists!"
else
	echo "Cluster does not exist, check if cloudformation is in progress, this can take several minutes"
	if aws cloudformation wait stack-create-complete --stack-name capstone21 ; then
	 	echo "Creation complete!"
        else
		echo "Neither a cluster exists nor is any cloudformation stack in creation, will create new cluster!"
         	aws cloudformation create-stack --stack-name capstone21 --template-body file://infrastructure.yaml  --parameters file://parameters.json  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=eu-central-1
         	aws cloudformation wait stack-create-complete --stack-name capstone21
	fi
fi