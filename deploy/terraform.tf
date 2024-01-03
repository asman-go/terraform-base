terraform {
  backend "s3" {
    # endpoint = "storage.yandexcloud.net"
    key                         = "asman.tfstate"
    dynamodb_table              = "lock"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
  }

  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }

  required_version = ">= 0.13"
}

provider "yandex" {}
