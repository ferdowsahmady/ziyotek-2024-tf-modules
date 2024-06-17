resource "aws_iam_user" "example" {
  # count = length(var.user_names)
  for_each = var.create_users ? toset(var.user_names) : []
  name     = each.value
}

variable "user_names" {
  type = list(any)
  default = [
    "user1",
    "user2",
    "user3"
  ]
}

variable "create_users" {
  default = false
}

# resource "aws_iam_group" "developers" {
#   name = "developers"
#   path = "/users/"
# }

# resource "aws_iam_group_membership" "team" {
#   count = length(var.user_names)
#   name  = "tf-testing-group-membership"
#   users = var.user_names
#   group = aws_iam_group.developers.name
# }

