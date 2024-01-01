terraform {
  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    key = "asman-remote-state"
    dynamodb_table = "lock"
    skip_region_validation = true
    skip_credentials_validation = true
  }

  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }

  required_version = ">= 0.13"
}

provider "yandex" {}
