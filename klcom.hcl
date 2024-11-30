# -----------------------------------------
# klcom.hcl
#   Overrides the bake file of tnlx/klcom
# -----------------------------------------

variable "W3_DIR" {}

target "default" {
  # Export the image content to fs
  # https://docs.docker.com/reference/cli/docker/buildx/build/#local
  output = ["${W3_DIR}"]
}
