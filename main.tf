resource "mgc_kubernetes_cluster" "devops" {
  name = "devops"
  version = "v1.30.2"
  description = "DevOps Cluster"
}

resource "mgc_kubernetes_nodepool" "np" {
  depends_on = [ mgc_kubernetes_cluster.devops ]
  name = "np"
  cluster_id = mgc_kubernetes_cluster.devops.id
  replicas = 3
  min_replicas = 1
  max_replicas = 3
  flavor_name = "cloud-k8s.gp1.small"
}