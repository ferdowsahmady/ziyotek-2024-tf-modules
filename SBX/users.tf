resource "aws_iam_user" "example" {
  for_each = toset(var.user_names)
  name     = each.key
}

variable "user_names" {
  type = list
  default = [
    "user1",
    "user2",
    "user3",
  ]
}

variable "create_users" {
  default = false
}

resource "aws_iam_group" "developers" {
  name = "developers"
  path = "/users/"
}

resource "aws_iam_group_membership" "team" {
  for_each = toset(var.user_names)
  name  = "demo-group-membership"
  users = [each.key]
  group = aws_iam_group.developers.name
  depends_on = [ aws_iam_user.example ]
}

