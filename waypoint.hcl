project = "pipe-dream"

pipeline "test" {
  step "build" {
    use "build" {}
  }
}

app "web" {
  build {
    use "docker" {}
    registry {
      use "docker" {
        image = "ttl.sh/jgwhite-testing-web"
        tag = "1h"
      }
    }
  }

  deploy {
    use "docker" {
      service_port = 80
    }
  }
}