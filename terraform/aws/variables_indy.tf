
variable "aws_region" {
  description = "AWS region to setup Fargate cluster."
  default     = "ap-south-1"
}

variable "aws_cidr_block" {
  description = "Cidr Block to use with AWS cluster for Fargate."
  default     = "172.17.0.0/16"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default = "IndyEcsTaskExecutionRole"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role Name"
  default = "IndyEcsAutoScaleRole"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region."
  default     = "2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "nginx:latest"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 2
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}