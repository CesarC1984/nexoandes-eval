module "network" {
  source = "./modules/network"

  name_prefix        = var.name_prefix
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone  = var.availability_zone
}



#module "compute" {
#  source = "./modules/compute"

#  name_prefix       = var.name_prefix
#  instance_type     = var.instance_type
#  subnet_id         = module.network.public_subnet_id
#  security_group_id = module.network.web_security_group_id

  # AQUÍ SE USA TEMPLATEFILE PARA LLENAR EL SCRIPT
  user_data = templatefile("${path.root}/user_data/user_data_v1.sh.tpl", {
    student_name   = var.student_name
    student_number = var.student_number
    environment    = var.environment
    portal_version = var.portal_version
    project_name   = var.project_name
  })
#}