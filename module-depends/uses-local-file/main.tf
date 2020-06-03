
data "local_file" "example" {
  filename = "${path.root}/hello.txt"
}

output "hello" {
  value = data.local_file.example.content
}
