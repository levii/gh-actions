workflow "New workflow" {
  on = "pull_request"
  resolves = ["Show Variables", "Comment On Pull Request"]
}

action "Show Variables" {
  uses = "./hello"
  args = "Hello, World."
}

action "Comment On Pull Request" {
  uses = "actions/github@v1.0.0"
  args = "comment "Hello World""
  secrets = ["GITHUB_TOKEN"]
}
