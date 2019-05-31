# Github Pattern Filter Action
This is a github action that checks to see if a pattern matches the files changed in the push event.
This is especially useful if you want to trigger certain builds based on the files that changed.

# Version
This action was developed with Python 3.7.2

# Usage
```
action "filter" {
  uses = "wcchristian/gh-pattern-filter-action@master"
  args = ".*main.workflow.*"
}
```

If the filter matches the action ends with exit code 0 and the workflow continues.

If the filter doesn't match any of the changes, the action ends with a neutral code 78 and the rest of the workflow is skipped.