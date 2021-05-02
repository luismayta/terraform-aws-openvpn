module "main" {
  providers = {
    aws      = aws.main
    template = template
    local    = local
  }
  source = "../"

  public_key   = var.public_key
  private_key  = var.private_key
  admin_user   = var.admin_user
  storage_path = var.storage_path
}
