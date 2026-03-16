terraform {
   backend "s3" {
       bucket = "shital-s3-demo-xyz"
	   key    = "real-terra-pro/terraform.tfstate"
	   region = "ap-south-1"
	   dynamodb_table = "terraform-lock"
   
   }
}

