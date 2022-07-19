project = "app-svelte"

runner {
  enabled = true

  data_source "git" {
    url  = "https://github.com/WebMobileDeveloper88/app-svelte.git"
    path = ""
  }
}

app "app-svelte" {
  labels = {
    "service" = "app-svelte",
    "env"     = "dev"
  }

  build {
    use "docker" {}
  }

  deploy {
    use "docker" {
      service_port = 5000
    }
  }
}

