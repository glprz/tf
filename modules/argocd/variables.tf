variable "namespace" {
  description = "Namespace of installation"
  type = string
  default = "argocd"
}

variable "release_name" {
  description = "Helm release name for ArgoCD"
  type = string
  default = "argocd"
}

variable "chart_version" {
  description = "Chart version for ArgoCD"
  type = string
  default = "7.8.2"
}