locals {
    env = "PROD"
}

data "aws_ssm_parameter" "layer" {
    name = local.env == "PROD" ? ˜˜ : "/jcon/layer/risco"
}
