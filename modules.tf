####NET CONFIGURATION
terraform {
  backend "s3" {
    bucket  = "pedrobucket26"
    key     = "terraform-test.tfstate"
    region  = "us-east-2"
    encrypt = true
  }

}

provider "aws" {
  region  = "us-east-2"
  version = "~> 5.58.0"

}


module "producao" {

  source = "git::https://github.com/pedrohfborges/terraform-ecs-fargate.git"

  vpc                    = "192.168.0.0/16"
  public_subnet          = "192.168.30.0/24"
  netprivate             = "192.168.40.0/24"
  cluster_name           = "NomedoClusterTeste"
  task_definition_family = "my-task-def"
  service_name           = "my-ecs-service"
  nometarefa             = "whoami"
  containerimage         = "stefanscherer/whoami:latest"
  cpu                    = 256
  memory                 = 512
  containerport          = 8080

}











