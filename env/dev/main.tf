module "dev_vm" {
  source                   = "../../modules/vm"
  environment              = "dev"
  mail_secret_key          = var.MAIL_SECRET_KEY
  mail_user                = var.MAIL_USER
  admin_username           = "adminuser"
  domain                   = var.DOMAIN
  resource_group           = "IN-RG-Juan"
  nic_name                 = "IN-NIC-Juan"
  mail_service             = var.MAIL_SERVICE
  security_group_name      = "IN-SG-Juan"
  ssh_key_path             = "./keys/712incident_server"
  port                     = var.PORT
  server_name              = "IN-Server-Juan"
  location                 = "eastus2"
  mapbox_access_token      = var.MAPBOX_ACCESS_TOKEN
  mongo_url                = var.MONGO_URL
  subnet_name              = "IN-SUBNET-Juan"
  mongo_init_root_username = var.MONGO_INITDB_ROOT_USERNAME
  mongo_init_root_password = var.MONGO_INITDB_ROOT_PASSWORD
  mongo_db                 = var.MONGO_DB
  ip_name                  = "IN-IP-Juan"
  vnet_name                = "IN-VNET-Juan"
}

resource "azurerm_resource_group" "prueba_examen" {
  name = "prueba-examen"
  location = "eastus2"
}

resource "azurerm_resource_group" "RG_RogelioCC" {
  name = "rc-rogeliocc"
  location = "eastus2"
}

