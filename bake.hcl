variable "W3_DIR" {}

target "linef" {
  context = "git@github.com:tnlx/linef.git"
  ssh = ["default"]
  # Export the image content to fs
  # https://docs.docker.com/reference/cli/docker/buildx/build/#local
  output = ["${W3_DIR}/linef"]
}

# -----------------------------------------
# Overrides the bake file of tnlx/klcom
# -----------------------------------------
target "default" {
  # Export the image content to fs
  # https://docs.docker.com/reference/cli/docker/buildx/build/#local
  output = ["${W3_DIR}/w3"]
}

group "default" {
  targets = ["linef", "default"]
}
