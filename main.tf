variable "ARM_CLIENT_ID"{
type=string
}
resource "azurerm_resource_group" "this" {
  name="rgdevsitecore2"
  location = "East US"
  //tags = local.tags
  
lifecycle {
    ignore_changes = [
      tags["CreatedDate"]
    ]
  }
}
