 resource "aws_lambda_function" "default" {
   function_name = "AddUserToJiraGroup"
   description = "Add User To Jira Group"
   role          = "x"
   handler       = "build/microservice/golang/AddUserToJiraGroup/main"
   runtime       = "go1.x"
   s3_bucket = "temenos-deployment-artifacts-"
   s3_key = "microservice/golang/AddUserToJiraGroup/aws/main.zip"
   memory_size = 512
   timeout = 300
   source_code_hash = "${base64encode(sha256("~/Development/ACS-GitLab/self-service/build/AddUserToJiraGroup/main.zip"))}"
   environment {
     variables = {
       JiraCredentials = "x"
     }
   }

   }