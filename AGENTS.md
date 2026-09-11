# ContentBox CLI - AI Coding Instructions

This repository is a CommandBox module that provides CLI commands for installing ContentBox and scaffolding ContentBox modules. Keep changes focused on the command and template surfaces described below.

## Architecture

**Command namespace**: Commands live under `/commands/contentbox/`:

- `help.cfc` - Displays the ContentBox CLI overview.
- `install.cfc` - Performs a non-interactive ContentBox installation.
- `install-wizard.cfc` - Collects installation settings interactively, then delegates to `install`.
- `create/module.cfc` - Generates a ContentBox module skeleton.
- `create/theme.cfc` - Reserved command; currently reports that it is not implemented.
- `create/widget.cfc` - Reserved command; currently reports that it is not implemented.

Commands use CommandBox's `print`, `ask`, `confirm`, `multiSelect`, `command`, and filesystem APIs directly. There is no shared `BaseCommand`, model layer, AI integration, ORM command set, REST command set, or Vite application generator in this repository.

**Module configuration**: `ModuleConfig.cfc` maps the module as `contentbox-cli` and exposes `templatesPath` through the module settings injection point. Keep template paths compatible with the existing `/templates` directory.

## Installer Behavior

`contentbox install` is intended for automation. It validates the selected CFML engine and database, installs `contentbox-installer`, optionally configures a `server.json`, writes the `.env` file, installs and runs ContentBox migrations, and optionally starts and opens the CommandBox server.

Supported values are defined in `commands/contentbox/install.cfc` and must be treated as the source of truth:

- Engines: `boxlang`, `lucee@5`, `lucee@6`, `adobe@2021`, `adobe@2023`, `adobe@2025`
- Databases: `HyperSonicSQL`, `MySQL5`, `MySQL8`, `MicrosoftSQL`, `PostgreSQL`, `Oracle`

Required installation arguments are `name`, `databaseType`, `databaseUsername`, and `databasePassword`. Optional settings include `cfmlEngine`, `cfmlPassword`, `coldboxPassword`, database host/port/name, `production`, `deployServer`, `verbose`, and `contentboxVersion`.

The wizard should remain a thin interactive wrapper around `install`. Passwords must stay masked in prompts and confirmation output. Do not log database passwords or generated environment secrets.

## Module Generation

`contentbox create module` creates a module under `modules/contentbox/modules_user` by default. It copies `/templates/modules`, replaces module metadata in `ModuleConfig.cfc`, selects script or tag markup, removes the unused handler/config variants, and reports every generated path.

The module template currently contains:

- `templates/modules/ModuleConfig.cfc`
- `templates/modules/ModuleConfigScript.cfc`
- `templates/modules/handlers/Home.cfc`
- `templates/modules/handlers/HomeScript.cfc`
- `templates/modules/models/models_here.txt`
- `templates/modules/views/home/index.cfm`

Use the existing `@token@` replacement style and preserve both script and tag template variants when adding generated content.

## Code Style

- Follow the existing CFML/BoxLang formatting and naming conventions.
- Semicolons are optional in CFML/BoxLang; preserve the local style and use them where required by property declarations or inline component syntax.
- Keep command arguments documented with DocBox-style comments when adding or changing public command parameters.
- Resolve user-provided directories before filesystem operations and validate required or enumerated inputs before making changes.
- Use CommandBox's existing print and command APIs instead of introducing new output or process abstractions.
- Keep generated files deterministic and avoid overwriting user files unless the command explicitly supports that behavior.

## Development Workflows

Build and release scripts are defined in `box.json` and `build/Build.cfc`:

- `box format` - Formats commands, build tasks, and `ModuleConfig.cfc`.
- `box format:watch` - Watches those paths and formats changes.
- `box format:check` - Checks formatting without changing files.
- `box task run build/Tests.cfc` - Runs the configured test task.
- `box build:module` - Runs the build task, including tests, API docs, packaging, and checksums.
- `box release` - Runs `build/release.boxr`.

The current `build/Tests.cfc` is a smoke-test placeholder. Add focused tests when changing command behavior, especially installer validation, generated module files, and script/tag selection. Do not describe placeholder commands as implemented features.

## Documentation

Update `README.md` when user-facing command behavior changes. Update `changelog.md` for every fix, update, or addition. After editing Markdown, run:

```bash
npx markdownlint-cli -f AGENTS.md changelog.md README.md
```
