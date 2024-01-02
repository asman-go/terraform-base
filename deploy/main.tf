data "yandex_resourcemanager_cloud" "cloud" {
  name = var.cloud
}

data "yandex_resourcemanager_folder" "folder" {
  cloud_id = data.yandex_resourcemanager_cloud.cloud.id
  name     = var.folder
}

provider "yandex" {
  alias = "with-project-info"

  cloud_id  = data.yandex_resourcemanager_cloud.cloud.id
  folder_id = data.yandex_resourcemanager_folder.folder.id
}
