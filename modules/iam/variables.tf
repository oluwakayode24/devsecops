variable "group_name" {
    description     = "The name of the user group to be created"
    type            = string
}

variable "managed_policies_to_attach" {
    description     = "List of aws managed policies to be attached to the user group"
    type            = list(any)
}

variable "policy_name" {
    description     = "aws policy name"
    type            = string
}

variable "policy_description" {
    description = "describes my inline policy"
    type = string
}

variable "inline_policies_to_attach" {
    description     = "List of aws managed inline - policies to be attached to the user group"
    type            = string
}