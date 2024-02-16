# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

* * *
* * *

## [Unreleased]

## [1.5.1] - 2024-02-10

### Fixed

- Temporary fix for the ORM extension not being discovered due to lucee bug on jvm args.

## [1.5.1] - 2024-02-10

### Fixed

- Updated github actions for consistency
- `box` binary removed, not sure why it was there in the first place

## [v1.5.0] => 2023-DEC-14

### Added

- New Migrations approach of ContentBox 6
- New Ortus ORM extension on Lucee
- Updated server properties according to new standards
- New Migrations approach of ContentBox 6
- New Ortus ORM extension on Lucee
- Updated server properties according to new standards

## [v1.4.0] => 2022-APR-05

### Fixed

- Fix password error prompts
- Fix password error prompts

### Added

- Mask the installer password inputs
- Mask the installer password inputs

* * *
* * *

## [v1.3.2] => 2022-MAR-31

### Fixed

- Don't run migrations on new installs
- Don't run migrations on new installs

* * *
* * *

## [v1.3.1] => 2022-MAR-31

### Fixed

- Boolean.len() failing, switching to len( boolean )
- Boolean.len() failing, switching to len( boolean )

* * *
* * *

## [v1.3.0] => 2022-MAR-31

### Added

- New argument `deployServer` so you can choose to deploy or not a CommandBox server when installing ContentBox
- New argument `deployServer` so you can choose to deploy or not a CommandBox server when installing ContentBox

* * *
* * *

## [v1.2.0] => 2022-FEB-18

### Added

- Added Adobe 2021 support for cfpm
- Added Adobe 2021 support for cfpm

* * *
* * *

## [v1.1.0] => 2021-DEC-03

### Added

- Run initial migrations once ContentBox has been installed
- Ability to input a ContentBox version to install via the `install-wizard` command.
- Run initial migrations once ContentBox has been installed
- Ability to input a ContentBox version to install via the `install-wizard` command.

* * *
* * *

## [v1.0.0] => 2021-SEP-07

- The initial creation of a separate CommandBox project
- Misspelling on database port for Microsoft SQL server.
- `appcfc` missing variable when updating Lucee + MySQL 8 bug for DDL creation.

[Unreleased]: https://github.com/Ortus-Solutions/contentbox-cli/compare/v1.5.1...HEAD
- The initial creation of a separate CommandBox project
- Misspelling on database port for Microsoft SQL server.
- `appcfc` missing variable when updating Lucee + MySQL 8 bug for DDL creation.

[Unreleased]: https://github.com/Ortus-Solutions/contentbox-cli/compare/v1.5.1...HEAD

[1.5.1]: https://github.com/Ortus-Solutions/contentbox-cli/compare/e199c386dc5d1b262f9259d6824df5fa7dfdd77e...v1.5.1
[1.5.1]: https://github.com/Ortus-Solutions/contentbox-cli/compare/e199c386dc5d1b262f9259d6824df5fa7dfdd77e...v1.5.1
