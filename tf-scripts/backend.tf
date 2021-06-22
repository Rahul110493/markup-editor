terraform {
  backend "gcs"{
    bucket = "terraform1-state-editor"
    prefix = "dev"
  }
}
