# docker-awscli
Minimal container with SSM-capable AWS CLI

# Usage

Example: connection to a remote EC2 instance using AWS Systems Manager (SSM):

```
docker run --rm -it 
    -e AWS_DEFAULT_REGION=<your region>
    -e AWS_SECRET_ACCESS_KEY=<your secret key>
    -e AWS_ACCESS_KEY_ID=<your access key>
    chewiebrian/docker-awscli ssm start-session --target <your instance ID>
```
