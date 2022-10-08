# create profile
aws configure --profile [profile-name]

# list hosted zones
aws route53 list-hosted-zones --profile [profile-name] --region [region-name]

# upload a file to s3 bucket
aws s3 cp [file-name] s3://[s3-bucket-name] --profile [profile-name]