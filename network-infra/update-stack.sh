# This script updates an existing CloudFormation stack
#!/bin/bash
if [ "$#" -ne 3 ]; then 
    echo "Usage: $0 <stack-name> <template-file> <parameters-file>"
    exit 1
fi          

aws cloudformation update-stack --stack-name $1 \
    --template-body file://$2 \
    --parameters file://$3 \
    --capabilities CAPABILITY_NAMED_IAM\
    --region eu-central-1