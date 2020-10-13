terraform {
  backend "remote" {
  	hostname = "app.terraform.io"
	organisation = "triangle"
	
	workspaces {
		name = "trianglecloud"
	}
    }
}