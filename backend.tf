terraform {
  backend "remote" {
  	hostname = "app.terraform.io"
	organization = "triangle"
	
	workspaces {
		name = "trianglecloud"
	}
    }
}