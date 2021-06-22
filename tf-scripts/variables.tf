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

variable "renderer_svc_url" {
  description = "renderer_svc_url for Opt Out Application."
  type =string
  default = ""
}


