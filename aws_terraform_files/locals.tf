locals {
  self_ip = "${chomp(data.http.self_ip.response_body)}/32"
}
