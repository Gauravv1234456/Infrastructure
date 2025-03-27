resource "aws_cloudwatch_log_group" "api_logs" {
  name = "/aws/api-gateway/main"
}

resource "aws_cloudwatch_log_group" "lambda_logs" {
  name = "/aws/lambda/mainLambda"
}

resource "aws_cloudwatch_log_group" "dynamodb_logs" {
  name = "/aws/dynamodb/mainTable"
}

