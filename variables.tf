variable "subaccount_id" {
  type        = string
  description = "The ID of the subaccount where cloudfoundry shall be enabled."
}

variable "plan_name" {
  type        = string
  description = "The desired service plan for the cloudfoundry environment instance."
  default     = "standard"
}

variable "environment_label" {
  type        = string
  description = "In case there are multiple environments available for a subaccount, you can use this label to choose with which one you want to go. If nothing is given, we take by default the first available."
  default     = "cf-us10"
}

variable "instance_name" {
  type        = string
  description = "The name of the cloudfoundry environment instance."
  default     = "tf-retest-import-issue"
}

variable "cloudfoundry_org_name" {
  type        = string
  description = "The name of the cloudfoundry organization."
  default     = "tf-retest-import-issue"
}
