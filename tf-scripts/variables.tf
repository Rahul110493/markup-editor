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

variable "cloudrun_sa" {
  description = "cloudrun_sa for Opt Out Application."
  type =string
  default = ""
}

variable "service_name" {
  description = "service_name for Opt Out Application."
  type =string
  default = ""
}

variable "invoker_member" {
  description = "invoker_member for Opt Out Application."
  type =string
  default = ""
}

variable "port" {
  description = "port for Opt Out Application."
  type =number
  default = 80
}



