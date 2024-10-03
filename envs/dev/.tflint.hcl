plugin "aws" {
  enabled = true
  version = "0.18.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

config {
 call_module_type = "all"
}

rule "terraform_unused_declarations" {
  enabled = true
}
