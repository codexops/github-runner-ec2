data "archive_file" "lambda" {
  type        = "zip"
  source_file = "${path.module}/createInstance.py"
  output_path = "${path.module}/createInstance.zip"
}

data "aws_apigatewayv2_api" "my_api" {
  api_id = var.apiId
}

resource "aws_lambda_function" "test_lambda" {
   filename      = "${path.module}/createInstance.zip"
   function_name = "autoScalingRunner"
   role          = var.roleArn
   handler       = "createInstance.lambda_handler"
   runtime       = var.lambdaFunctionRuntime
}

resource "aws_apigatewayv2_integration" "lambda" {
  api_id             = data.aws_apigatewayv2_api.my_api.id 
  integration_method = var.apiIntegrationMethod
  integration_type   = "AWS_PROXY"
  integration_uri    = "${aws_lambda_function.test_lambda.invoke_arn}"
}

resource "aws_lambda_permission" "lambda_permission" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = var.lambdaAction
  function_name = aws_lambda_function.test_lambda.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${data.aws_apigatewayv2_api.my_api.execution_arn}/*/*/${aws_lambda_function.test_lambda.function_name}" 
}
