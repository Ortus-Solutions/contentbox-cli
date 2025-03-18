# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

* * *

## [Unreleased]

## [1.8.0] - 2025-03-18

### Added

- BoxLang prep
- Adobe 2025 Support

### Fixed

- Multiple lucee engines selected on the installer wizard
- Add missing `"commandbox-migrations": "^4.0.0"` dependency

## [1.7.0] - 2025-03-02

### Fixed

- Adobe 2021 support was not working correctly for `onServerInstall` method
- PostgreSQL jdbc driver update on installer

## [1.6.0] - 2024-03-19

### Added

- Adobe 2023 Support
- Lucee 6 Support
- Dropped Adobe 2016 since this was deprecated already
- ContentBox 6 default version

### Updates

- Updated Database Drivers for: MySQL, MSSQL, Hypersonic

### Fixed

- ContentBox 6 was not the default and migrations was not running correctly

* * *

## [1.5.2] - 2024-02-16

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

## [v1.4.0] => 2022-APR-05

### Fixed

- Fix password error prompts

### Added

- Mask the installer password inputs

* * *

## [v1.3.2] => 2022-MAR-31

### Fixed

- Don't run migrations on new installs

* * *

## [v1.3.1] => 2022-MAR-31

### Fixed

- Boolean.len() failing, switching to len( boolean )

* * *

## [v1.3.0] => 2022-MAR-31

### Added

- New argument `deployServer` so you can choose to deploy or not a CommandBox server when installing ContentBox

* * *

## [v1.2.0] => 2022-FEB-18

### Added

- Added Adobe 2021 support for cfpm

* * *

## [v1.1.0] => 2021-DEC-03

### Added

- Run initial migrations once ContentBox has been installed
- Ability to input a ContentBox version to install via the `install-wizard` command.

* * *

## [v1.0.0] => 2021-SEP-07

- The initial creation of a separate CommandBox project
- Misspelling on database port for Microsoft SQL server.
- `appcfc` missing variable when updating Lucee + MySQL 8 bug for DDL creation.

[Unreleased]: https://github.com/Ortus-Solutions/contentbox-cli/compare/v1.8.0...HEAD

[1.8.0]: https://github.com/Ortus-Solutions/contentbox-cli/compare/v1.7.0...v1.8.0

[1.7.0]: https://github.com/Ortus-Solutions/contentbox-cli/compare/v1.6.0...v1.7.0

[1.6.0]: https://github.com/Ortus-Solutions/contentbox-cli/compare/v1.5.2...v1.6.0

[1.5.2]: https://github.com/Ortus-Solutions/contentbox-cli/compare/v1.5.1...v1.5.2

[1.5.1]: https://github.com/Ortus-Solutions/contentbox-cli/compare/e199c386dc5d1b262f9259d6824df5fa7dfdd77e...v1.5.1
