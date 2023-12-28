variable "cloud" {
  description = "Название облака"
  type        = string
  default     = "ikemurami-cloud"
}

variable "folder" {
  description = "Название рабочего каталога"
  type        = string
  default     = "asman"
}

variable "module" {
  description = "Подключаемый terraform-модуль (репозиторий)"
  type        = string
}
