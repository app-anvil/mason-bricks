# repository

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A new brick created with the Mason CLI.

_Generated by [mason][1] 🧱_

## Getting Started 🚀

Use this brick to create a new repository.
Run this brick inside the `folder` that will contain the `repositories` folder.

## How to use 🚀

```shell
mason make repository
```

## Variables ✨

| Variable           | Description                                             | Default        | Type      | Conditional | When             |
| ------------------ | ------------------------------------------------------- | -------------- | --------- | ----------- | ---------------- |
| `name`             | The name of the repository                              | N/A            | `string`  | false       | N/A              |
| `entity`           | The name of the entity handled by the repository        | N/A            | `string`  | false       | N/A              |
| `entity_is`        | The type of entity class                                | `interface`    | `enum`    | false       | N/A              |
| `repository_type`  | The type of the repository                              | `repository`   | `enum`    | false       | N/A              |

## Outputs 📦

```bash
--name todo --entity todo --entity_is interface --repository_type repository
├── repositories
    ├── test
    │   └── todo_repository
    │       └── data
    │           ├── data_sources
    │           │   └── todo_data_source_test.dart
    │           └── todo_repository_impl_test.dart
    └── todo_repository
        ├── data
        │   ├── data.dart
        │   ├── data_sources
        │   │   ├── data_sources.dart
        │   │   └── todo_data_source.dart
        │   ├── models
        │   │   ├── _model.dart
        │   │   └── models.dart
        │   └── todo_repository_impl.dart
        ├── domain
        │   ├── domain.dart
        │   ├── entities
        │   │   ├── _entity.dart
        │   │   └── entities.dart
        │   └── repository
        │       ├── repository.dart
        │       ├── todo_repository.dart
        │       └── todo_repository_state.dart
        └── todo_repository.dart
```