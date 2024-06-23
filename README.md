# 🧱 mason-bricks
Our collection of [Mason](https://github.com/felangel/mason) bricks that enable us to be more productive when writing code

## Getting started 🚀

### Creating a brick

```
# Generate a new brick in the current directory.
mason new <BRICK_NAME>

# Generate a new brick with a custom description.
mason new <BRICK_NAME> --desc "My awesome, new brick!"

# Generate a new brick with hooks.
mason new <BRICK_NAME> --hooks

# Generate a new brick in custom path.
mason new <BRICK_NAME> --output-dir ./path/to/brick

# Generate a new brick in custom path shorthand syntax.
mason new <BRICK_NAME> -o ./path/to/brick
```

Get all bricks registered in mason.yaml via:
```
mason get 
```

### Adding a brick 🫰

To add a brick, use any of the following commands:

```sh
# add from git url
mason add <BRICK_NAME> --git-url https://github.com/marcossevilla/bricks

# add from git url (global)
mason add -g <BRICK_NAME> --git-url https://github.com/marcossevilla/bricks

# add from git url with path
mason add <BRICK_NAME> --git-url https://github.com/marcossevilla/bricks --git-path path/to/<BRICK_NAME>

# add from git url with path and ref
mason add <BRICK_NAME> --git-url https://github.com/marcossevilla/bricks --git-path path/to/<BRICK_NAME> --git-ref tag-name
```

*Note: Be sure to replace `<BRICK_NAME>` with one of the following bricks:*

## Available bricks 🧱