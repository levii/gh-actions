workflow "New workflow" {
  on = "pull_request"
  resolves = ["Show Variables"]
}

action "Show Variables" {
  uses = "./hello"
  args = "Hello, World."
}
