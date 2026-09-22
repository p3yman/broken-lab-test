resource "lab" "main" {
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

resource "layout" "single_panel" {
  column {
    instructions {
      title = "Instructions"
    }

    tab "shell" {
      target = resource.terminal.shell
      title  = "shell"
    }

    tab "editor" {
      target = resource.editor.editor
      title  = "editor"
    }

    width = "100%"
  }
}
