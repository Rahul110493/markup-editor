variable "project_id" {
  description = "The ID of an Google Project "
  type =string
  default = ""
}

variable "region" {
  description = "Region"
  type = string
  default = ""
}

variable "docker_image" {
  description = "DockerFile for Opt Out Application."
  type =string
  default = ""
}

variable "RENDERER_SERVICE_URL" {
  description = "RENDERER_SERVICE_URL for Opt Out Application."
  type =string
  default = ""
}


