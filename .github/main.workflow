workflow "New workflow" {
  on = "pull_request"
  resolves = [
    "Show Variables",
    "Comment On Pull Request",
    "Filter Pull Request Base Branch",
  ]
}

action "Show Variables" {
  uses = "./hello"
  args = "Hello, World."
}

action "Filter Pull Request Base Branch" {
  uses = "./filter_pull_request_base_branch"
  args = "master"
}

action "Comment On Pull Request" {
  need = ["Filter Pull Request Base Branch"]
  uses = "actions/github@v1.0.0"
  args = "comment 'Hello World'"
  secrets = ["GITHUB_TOKEN"]
}
