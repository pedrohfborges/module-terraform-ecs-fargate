####NET CONFIGURATION
module "producao" {

  source = "git::https://github.com/pedrohfborges/terraform-ecs-fargate.git"

      variable "vpc" {
        default     = "192.168.0.0/16"
        description = "Set VCN IP"
      }

      variable "public_subnet" {
        default     = "192.168.30.0/24"
        description = "Set Subnet Public"
      }

      variable "netprivate" {
        default     = "192.168.40.0/24"
        description = "Set subnet Private"
      }

      variable "cluster_name" {
        default = "NomedoClusterTeste"
      }

      variable "task_definition_family" {
        default = "my-task-def" # Nome da definição de tarefa ECS
      }

      variable "service_name" {
        default = "my-ecs-service" # Nome do serviço ECS
      }

      variable "region" {
        type = string
        default = "us-east-2"
      }

      variable "bucket" {
        type = string
        default = "pedrobucket26"
      }


}











