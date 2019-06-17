workflow "New workflow" {
  on = "pull_request"
  resolves = [
    "Show Variables",
    "Filter Pull Request Base Branch",
    "Filter Pull Request Base Branch (release)",
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
  needs = "Filter Pull Request Base Branch"
  uses = "actions/github@v1.0.0"
  args = "comment 'Hello target is master'"
  secrets = ["GITHUB_TOKEN"]
}

action "Filter Pull Request Base Branch (release)" {
  uses = "./filter_pull_request_base_branch"
  args = "release"
}

action "Comment On Pull Request" {
  needs = "Filter Pull Request Base Branch (release)"
  uses = "actions/github@v1.0.0"
  args = "comment 'Hello target is release'"
  secrets = ["GITHUB_TOKEN"]
}
