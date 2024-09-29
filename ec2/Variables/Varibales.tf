variable "amiid" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "ami variable testing"
}

variable "instancetype" {
  type        = string
  default     = "t3.micro"
  description = "description"
}

variable "sgname" {
  type        = string
  default     = "sgallow"
  description = "description"
}

variable "tags" {
  type        = string
  default     = "sshvar"
  description = "description"
}
