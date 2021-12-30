# Terraform docs:

https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip

# Usage:

Insert the following code snippets within the specified parent files:

## /main.tf

```t
module "azurerm_resource_group" {
  source = "git::ssh://git@bitbucket.org/moula/infrastructure-as-code.git//azurerm/azurerm_public_ip"

  resource_group_name = module.azurerm_resource_group.name
  location            = module.azurerm_resource_group.ip_address
  allocation_method   = "Static"
}

```

## /variables.tf

```t
variable "client_project_id" {
  description = "Project ID"
}

variable "client_environment" {
  description = "Environment. eg: dev / uat / prod / nonprod"
}

variable "cloud_location_1" {
  description = "Primary cloud Location (region). eg: 'Austalia East', 'Australia Southeast'"
}

variable "cloud_location_2" {
  description = "Secondary cloud Location (region). eg: 'Austalia East', 'Australia Southeast'"
}
```

## /deployment/$ENVIRONMENT.tfvars  (Example)

```t
client_project_id  = "mouladwh"
client_environment = "nonprod"

cloud_location_1 = "Australia Southeast"
cloud_location_2 = "Australia East"
```

# Outputs:

## id 

The ID of the Public IP component. Can be reused in other modules by calling the following variable:

```
module.azurerm_public_ip.id
```

## ip_address 

The name of the Public IP component. Can be reused in other modules by calling the following variable:


```
module.azurerm_public_ip.ip_address
```