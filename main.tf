terraform{
  backend s3{
  }
}
provider "aws" {
  region = var.region
}
# data "aws_s3_bucket_object" "clust_name" {
#   bucket = "trainingusbatch"
#   key    = "myapp/staging/current"
# }

module "eks" {
#   source  = "github.com/synectiks-sddc/terraform-aws-customEKS.git"
  source = "github.com/mohdzakir12/terraform-aws-customEKS.git"
  #source   = "/mnt/d/mycode/terraform-aws-customEKS" #"/opt/mycode/terraform-aws-eks"
  #version = "0.0.1"
  # insert the 1 required variable here
  #cluster_version = "1.20"
  cluster_name    = var.cluster_name #"${data.aws_s3_bucket_object.clust_name.body}" 
  cluster_version = var.cluster_version
  #region 	  = var.region
}
