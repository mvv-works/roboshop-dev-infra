module "components" {
  for_each    = var.components
  source      = "git::https://github.com/mvv-works/terraform-roboshop-component.git?ref=main"
  environment = var.environment
  component   = each.key
  app_version = each.value.app_version
}
