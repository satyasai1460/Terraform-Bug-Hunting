locals {
  new_public_subnet_cidrs = distinct(var.public_subnet_cidrs)
  new_env                 = lower(var.environment)
  projectId               = format("%s-%s", lower(var.vpc_name), lower(var.projectId))
}


