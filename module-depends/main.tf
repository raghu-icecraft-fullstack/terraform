
# This is an _incredibly_ contrived example using local files to demonstrate
# a whole-module dependency. In practice this is not a good situation for
# depends_on because we would normally have passed the filename through a
# module variable and thus created an implicit data-flow dependency, but this
# at least demonstrates the module depends_on syntax.
#
# Try adapting it to some more realistic situations you've encountered! For
# example, if you are an AWS user then you could try using IAM policy
# attachments as a side-effect that Terraform data flow doesn't naturally
# capture.

resource "local_file" "example" {
  content  = "hello world"
  filename = "${path.root}/hello.txt"
}

module "uses_local_file" {
  source = "./uses-local-file"

  # This is a contrived module that directly access the same file that
  # local_file.example creates. In practice this would generally be considered
  # poor design due to the implicit coupling between these modules, but we're
  # using it here just to show the syntax without depending on any remote APIs.
  depends_on = [local_file.example]
}

output "hello" {
  value = module.uses_local_file.hello
}
