project = "pipe-dream"

pipeline "test" {
  step "build" {
    use "build" {}
  }
}

app "web" {
  build {
    use "docker" {}
  }

  deploy {
    use "docker" {
      service_port = 80
    }
  }
}