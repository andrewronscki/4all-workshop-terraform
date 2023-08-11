data "archive_file" "this" {
  type        = "zip"
  source_file = "${local.nodejs_template_path}/index.js"
  output_path = "${local.output_path}/${var.function_name}.zip"
}

resource "aws_lambda_function" "this" {
  function_name = var.function_name
  handler       = "index.handler"
  role          = aws_iam_role.this.arn
  runtime       = "nodejs18.x"

  filename = data.archive_file.this.output_path

  tags = local.common_tags

  environment {
    variables = {
      TESTE = "TESTE DO ANDRÉ"
    }
  }
}
