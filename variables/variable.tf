variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMi ID"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  
}

variable "tags" {
  type        = map
  default     = {
Name = "backend"
Project = "expense"
Component = "backend"
Environment = "dev"
Terraform = "true"
  }
}

variable "sg_name"{
 default = "Secure SSH"

}

variable "from_port" {
  type        = number
  default     = "22"
  #description = "description"
}

variable "to_port" {
  type        = number
  default     = "22"
  #description = "description"
}
variable "protocol" {
  type        = string
  default     = "tcp"
  #description = "description"
}

variable "cidr_ingress" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
  description = "description"
}


   