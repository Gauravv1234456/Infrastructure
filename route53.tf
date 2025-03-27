resource "aws_route53_zone" "main" {
  name = "example.local"
}

resource "aws_route53_record" "api_gateway_record" {
  zone_id = aws_route53_zone.main.id
  name    = "api.example.local"
  type    = "A"
  alias {
    name                   = aws_api_gateway_rest_api.main.execution_arn
    zone_id                = aws_api_gateway_rest_api.main.id
    evaluate_target_health = true
  }
}

