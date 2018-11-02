provider "kubernetes" {
    config_context = "minikube"
}

resource "kubernetes_pod" "nginx" {
 metadata {
   name = "nginx"
   labels {
     app = "nginx"
   }
 }

 spec {
   container {
     image = "${var.image}"
     name  = "nginx"

     port {
       container_port = 8080
     }
   }
 }
}
