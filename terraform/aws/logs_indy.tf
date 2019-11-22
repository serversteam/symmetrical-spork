# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "indy_log_group" {
  name              = "/ecs/indy-app"
  retention_in_days = 30

  tags = {
    Name = "indy-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "indy_log_stream" {
  name           = "indy-log-stream"
  log_group_name = aws_cloudwatch_log_group.indy_log_group.name
}