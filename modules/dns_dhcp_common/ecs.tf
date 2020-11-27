resource "aws_ecs_cluster" "server_cluster" {
  name = "${var.prefix}-cluster"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

resource "aws_ecs_service" "service" {
  name            = "${var.prefix}-service"
  cluster         = aws_ecs_cluster.server_cluster.id
  task_definition = var.task_definition_arn
  desired_count   = var.desired_count
  launch_type     = "FARGATE"

  load_balancer {
    target_group_arn = aws_lb_target_group.target_group.arn
    container_name   = var.container_name
    container_port   = var.container_port
  }

  dynamic "load_balancer" {
    for_each = var.has_api_lb ? [1] : []

    content {
      target_group_arn = var.api_lb_target_group_arn
      container_name   = var.container_name
      container_port   = "8000"
    }
  }

  network_configuration {
    subnets = var.subnets

    security_groups = [
      var.security_group_id
    ]

    assign_public_ip = true
  }
}

