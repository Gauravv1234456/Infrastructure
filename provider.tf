provider "aws" {
  access_key = "test"
  secret_key = "test"
  region     = "us-east-1"
  
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  
  endpoints {
    sts = "http://localhost:4566"
    apigateway       = "http://localhost:4566"
    cloudformation   = "http://localhost:4566"
    cloudwatch       = "http://localhost:4566"
    cloudwatchevents = "http://localhost:4566"
    cloudwatchlogs   = "http://localhost:4566"
    dynamodb         = "http://localhost:4566"
    ec2              = "http://localhost:4566"
    events           = "http://localhost:4566"
    iam              = "http://localhost:4566"
    lambda           = "http://localhost:4566"
    route53          = "http://localhost:4566"
    s3               = "http://localhost:4566"
    secretsmanager   = "http://localhost:4566"
    ses              = "http://localhost:4566"
    sns              = "http://localhost:4566"
    sqs              = "http://localhost:4566"
    ssm              = "http://localhost:4566"
  }
}
