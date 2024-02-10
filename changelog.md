# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

----

## [Unreleased]

### Fixed

* Updated github actions for consistency
* `box` binary removed, not sure why it was there in the first place

## [v1.5.0] => 2023-DEC-14

### Added

* New Migrations approach of ContentBox 6
* New Ortus ORM extension on Lucee
* Updated server properties according to new standards


## [v1.4.0] => 2022-APR-05

### Fixed

* Fix password error prompts

### Added

* Mask the installer password inputs

----

## [v1.3.2] => 2022-MAR-31

### Fixed

* Don't run migrations on new installs

----

## [v1.3.1] => 2022-MAR-31

### Fixed

* Boolean.len() failing, switching to len( boolean )

----

## [v1.3.0] => 2022-MAR-31

### Added

* New argument `deployServer` so you can choose to deploy or not a CommandBox server when installing ContentBox

----

## [v1.2.0] => 2022-FEB-18

### Added

* Added Adobe 2021 support for cfpm


----

## [v1.1.0] => 2021-DEC-03

### Added

* Run initial migrations once ContentBox has been installed
* Ability to input a ContentBox version to install via the `install-wizard` command.

----

## [v1.0.0] => 2021-SEP-07


* The initial creation of a separate CommandBox project
* Misspelling on database port for Microsoft SQL server.
* `appcfc` missing variable when updating Lucee + MySQL 8 bug for DDL creation.
