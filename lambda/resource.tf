resource "aws_iam_role" "iam_for_s3_access_lambda" {
  name = "iam_for_s3_access_lambda"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": ["sts:AssumeRole", "s3:Get*", "s3:List*"],
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::dc-contact-bucket/*",
      "Effect": "Allow"
    }
  ]
}
EOF
}

#The above does not work, the Resource part of the policy leads to an error.
#TODO, create policy and then create a role and then attach it the lambda below

#TODO, fix the following, once the role above gets created succesfully, this will work.
resource "aws_lambda_function" "test_lambda" {
    filename = "lambda.zip"
   function_name = "test_lambda"
   handler = "index.handler"
   role = aws_iam_role.iam_for_s3_access_lambda.arn
   runtime = "nodejs12.x"
}