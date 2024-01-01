module "terraform-module" {
  source = "github.com/asman-go/cf-bbprogram//deploy"

  providers = {
    yandex = yandex.with-project-info
  }
}
