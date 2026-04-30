output "gitlab_domain" {
  value       = data.yandex_gitlab_instance.demo.domain
  description = "Домен, на котором запущен Gitlab"
}
