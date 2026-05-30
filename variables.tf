variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "db_name" {
  description = "Naziv baze podataka"
  default     = "notesdb"
}

variable "db_username" {
  description = "Korisnicko ime za bazu podataka"
  default     = "postgres"
}

variable "db_password" {
  description = "Lozinka za bazu podataka"
  default     = "postgres123"
  sensitive   = true
}

variable "frontend_image" {
  description = "Docker image za frontend"
  default     = "nejlakavazovic/notes-frontend:latest"
}

variable "backend_image" {
  description = "Docker image za backend"
  default     = "nejlakavazovic/notes-backend:latest"
}
