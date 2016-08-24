#### Reorder commit (not pushed yet)
> Reference http://gitready.com/advanced/2009/03/20/reorder-commits-with-rebase.html

For example if you like to reorder last 2 commits,

```
git rebase -i HEAD~2
```

An editor appears. Use the editor to change the order of `pick`s.

Save it and done.

#### Push a specific commit
> Reference: http://stackoverflow.com/a/4512933/3164091

