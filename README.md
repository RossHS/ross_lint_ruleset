### My Flutter lints ruleset

Default lints ruleset for Flutter projects

Example `analysis_options.yaml` file:

```yaml
include: package:ross_lints/rules.yaml
```

Import `pubspec.yaml` file:

```yaml
dev_dependencies:
  ross_lints:
    git:
      url: git://github.com/RossHS/ross_lint_ruleset
```