terraform {
 backend "remote" {
   organization = "ayu"

   workspaces {
     name = "terra"
   }
 }
}

resource "null_resource" "terraform-github-actions" {
 triggers = {
   value = "This resource was created using GitHub Actions!..."
 }
}
