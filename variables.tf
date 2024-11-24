variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "container_port" {
  description = "Port on which the container listens"
  default     = 3000
}

variable "health_check_path" {
  description = "Path for the load balancer health check"
  default     = "/"
}

variable "desired_count" {
  description = "Number of ECS tasks to run"
  default     = 1
}

variable "cpu" {
  description = "CPU units used by the task"
  default     = 256
}

variable "memory" {
  description = "Memory (in MiB) used by the task"
  default     = 512
}

variable "ecr_repository_name" {
  description = "Name of the ECR repository containing the Docker image"
  default     = "todo-app-repository"
}

variable "image_tag" {
  description = "Tag of the Docker image"
  default     = "latest"
}

variable "environment_variables" {
  description = "Environment variables to pass to the container"
  type        = map(string)
  default     = {
    NODE_ENV = "production"
  }
}

variable "aws_access_key_id" {
  description = "AWS Access Key ID"
  type        = string
  sensitive   = true
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access Key"
  type        = string
  sensitive   = true
}
