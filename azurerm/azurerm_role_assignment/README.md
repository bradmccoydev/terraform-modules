# Terraform docs:

https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment

# Usage:

Insert the following code snippets within the specified parent files:

## /main.tf

```t
module "azurerm_role_assignment" {
  source = "git::ssh://git@bitbucket.org/moula/infrastructure-as-code.git//azurerm/azurerm_role_assignment"

  scope                = module.**resource**.id // Update accordingly with ID of Subscription / Group / Resource to be provided access to. Eg: module.azurerm_resource_group.id 
  role_definition_name = "Reader" // Azure RBAC role name. Eg: Contributor, Reader, Storage Blob Data Contributor
  principal_id         = module.**resource**.id // Update accordingly with ID of the Principal (User, Group, Service Principal, Application) to assign the Role Definition to.
}
```

## /variables.tf

```t
# None applicable
```

## /deployment/$ENVIRONMENT.tfvars  (Example)

```t
# None applicable
```

# Outputs:

None applicable