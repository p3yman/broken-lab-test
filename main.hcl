resource "lab" "main" {
  title       = "Peyman testing lab 2"
  description = "This is the Skeleton Lab.\nYou can use this as a minimal starting point for developing labs.\n"

  content {
    chapter "__default" {
      title = "Default"
      page "untitled-page-1" {
        reference = resource.page.untitled-page-1
        title     = "Untitled page 1"
      }
    }
  }

  settings {
    idle {
      enabled = false
      timeout = "10m"
    }
    timelimit {
      duration = "1h"
    }
  }
}
