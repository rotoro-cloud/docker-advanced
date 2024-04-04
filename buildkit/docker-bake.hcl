variable "TAG" {
  default = "unstable"
}

group "default" {
  targets = ["app", "db", "lb"]
}

target "app" {
  dockerfile = "app.Dockerfile"
  platforms  = ["linux/amd64"]
  tags       = ["rotorocloud/monorepo:app-${TAG}"]
}
 
target "db" {
  dockerfile = "db.Dockerfile"
  platforms  = ["linux/amd64"]
  tags       = ["rotorocloud/monorepo:db-${TAG}"]
}

target "lb" {
  dockerfile = "lb.Dockerfile"
  platforms  = ["linux/amd64"]
  tags       = ["rotorocloud/monorepo:lb-${TAG}"]
}
