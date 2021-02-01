locals {
  colors = ["black", "red", "green", "yellow", "blue", "magenta", "cyan", "white"]
}

resource "random_integer" "index" {
  for_each = toset(["ball", "light", "star"])
  min      = 0
  max      = length(local.colors) - 1

  keepers = {
    listen_arn = var.tree_path
  }
}

resource "christmas-tree" "tree" {
  path        = var.tree_path
  ball_color  = local.colors[random_integer.index["ball"].id]
  light_color = local.colors[random_integer.index["light"].id]
  star_color  = local.colors[random_integer.index["star"].id]
}
