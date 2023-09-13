
# Find technical ID of environment instance
data "btp_subaccount_environment_instances" "all" {
  subaccount_id = var.subaccount_id
}

output "all" {
  value = "${var.subaccount_id},${data.btp_subaccount_environment_instances.all.values[0].id}"
}


# Import environment instance

import {
  to = btp_subaccount_environment_instance.cloudfoundry
  id = ""
}
resource "btp_subaccount_environment_instance" "cloudfoundry" {
  subaccount_id    = var.subaccount_id
  name             = var.instance_name
  environment_type = "cloudfoundry"
  service_name     = "cloudfoundry"
  plan_name        = var.plan_name
  landscape_label  = var.environment_label

  parameters = jsonencode({
    instance_name = var.cloudfoundry_org_name
  })
}
