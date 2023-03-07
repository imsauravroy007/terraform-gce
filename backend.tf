terraform {
  cloud {
    organization = "epam21212"

    workspaces {
      name = "demo-tomcat-install"
    }
  }
}