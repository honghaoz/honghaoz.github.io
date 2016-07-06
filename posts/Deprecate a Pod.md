### How to deprecate a pod

add `spec.deprecated = true` and `spec.deprecated_in_favor_of = 'NewMoreAwesomePod'`

Ref: [Deprecations](http://blog.cocoapods.org/CocoaPods-0.32/)

### How to remove last commit on Github
1. Reset locally `git reset --hard HEAD~1`
2. Push to origin forcely `git push --force` (for master: `git push origin master --force`)

Ref: [Undo Last Commit](http://stackoverflow.com/questions/927358/how-do-you-undo-the-last-commit)
