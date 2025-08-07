# Changelog

All notable changes to this project will be documented in this file.
Each new release typically also includes the latest modulesync defaults.
These should not affect the functionality of the module.

## [v3.2.0](https://github.com/voxpupuli/puppet-patroni/tree/v3.2.0) (2025-05-21)

[Full Changelog](https://github.com/voxpupuli/puppet-patroni/compare/v3.1.0...v3.2.0)

**Implemented enhancements:**

- Add Ubuntu 24.04 support [\#50](https://github.com/voxpupuli/puppet-patroni/pull/50) ([mouchymouchy](https://github.com/mouchymouchy))

**Merged pull requests:**

- Fix Apache-2 license text [\#77](https://github.com/voxpupuli/puppet-patroni/pull/77) ([bastelfreak](https://github.com/bastelfreak))

## [v3.1.0](https://github.com/voxpupuli/puppet-patroni/tree/v3.1.0) (2025-04-09)

[Full Changelog](https://github.com/voxpupuli/puppet-patroni/compare/v3.0.0...v3.1.0)

**Implemented enhancements:**

- Add AlmaLinux/OracleLinux/CentOS support [\#68](https://github.com/voxpupuli/puppet-patroni/pull/68) ([bastelfreak](https://github.com/bastelfreak))
- metadata.json: Add OpenVox [\#67](https://github.com/voxpupuli/puppet-patroni/pull/67) ([jstraw](https://github.com/jstraw))
- Add support for etcd protocol version 3 [\#66](https://github.com/voxpupuli/puppet-patroni/pull/66) ([jordyb6](https://github.com/jordyb6))

**Merged pull requests:**

- Update example inside docs README [\#74](https://github.com/voxpupuli/puppet-patroni/pull/74) ([lbetz](https://github.com/lbetz))
- Run unit tests on all platforms [\#69](https://github.com/voxpupuli/puppet-patroni/pull/69) ([bastelfreak](https://github.com/bastelfreak))
- switch from tailoredautomation/etcd-\>puppet/etcd [\#65](https://github.com/voxpupuli/puppet-patroni/pull/65) ([bastelfreak](https://github.com/bastelfreak))
- fixtures: migrate to git urls [\#61](https://github.com/voxpupuli/puppet-patroni/pull/61) ([bastelfreak](https://github.com/bastelfreak))
- CI: Cleanup Hiera setup [\#59](https://github.com/voxpupuli/puppet-patroni/pull/59) ([bastelfreak](https://github.com/bastelfreak))

## [v3.0.0](https://github.com/voxpupuli/puppet-patroni/tree/v3.0.0) (2025-02-19)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/v2.1.0...v3.0.0)

### Changed

- Drop workaround for Puppet 5 and older [\#52](https://github.com/tailored-automation/puppet-module-patroni/pull/52) ([bastelfreak](https://github.com/bastelfreak))

### Added

- update ensure\_packages\(\)-\>stdlib::ensure\_packages\(\) [\#54](https://github.com/tailored-automation/puppet-module-patroni/pull/54) ([bastelfreak](https://github.com/bastelfreak))
- Add support for Debian 12 [\#53](https://github.com/tailored-automation/puppet-module-patroni/pull/53) ([bastelfreak](https://github.com/bastelfreak))
- puppet/systemd: Allow 7.x & 8.x [\#51](https://github.com/tailored-automation/puppet-module-patroni/pull/51) ([bastelfreak](https://github.com/bastelfreak))
- Add http\_proxy support for pip commands [\#49](https://github.com/tailored-automation/puppet-module-patroni/pull/49) ([bastelfreak](https://github.com/bastelfreak))
- Fix improper parsing of pgsql\_replica\_method [\#38](https://github.com/tailored-automation/puppet-module-patroni/pull/38) ([jsosic](https://github.com/jsosic))

### Merged pull requests:

- puppet/systemd: Allow 7.x & 8.x [\#55](https://github.com/tailored-automation/puppet-module-patroni/pull/55) ([ghoneycutt](https://github.com/ghoneycutt))

## [v2.1.0](https://github.com/tailored-automation/puppet-module-patroni/tree/v2.1.0) (2025-01-04)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/v2.0.1...v2.1.0)

### Added

- Harden the datatypes [\#48](https://github.com/tailored-automation/puppet-module-patroni/pull/48) ([ghoneycutt](https://github.com/ghoneycutt))

## [v2.0.1](https://github.com/tailored-automation/puppet-module-patroni/tree/v2.0.1) (2025-01-04)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/v2.0.0...v2.0.1)

### Fixed

- Fix existing issues so tests work again [\#47](https://github.com/tailored-automation/puppet-module-patroni/pull/47) ([ghoneycutt](https://github.com/ghoneycutt))

### Merged pull requests:

- Fix crash if pg password starting with bracket [\#42](https://github.com/tailored-automation/puppet-module-patroni/pull/42) ([ghoneycutt](https://github.com/ghoneycutt))
- Fix crash if pg password starting with bracket [\#39](https://github.com/tailored-automation/puppet-module-patroni/pull/39) ([mouchymouchy](https://github.com/mouchymouchy))
- adding standby cluster config [\#31](https://github.com/tailored-automation/puppet-module-patroni/pull/31) ([plmayekar](https://github.com/plmayekar))

## [v2.0.0](https://github.com/tailored-automation/puppet-module-patroni/tree/v2.0.0) (2023-11-27)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/v1.6.0...v2.0.0)

### Changed

- Major updates, see description [\#37](https://github.com/tailored-automation/puppet-module-patroni/pull/37) ([treydock](https://github.com/treydock))

### Merged pull requests:

- PDK update [\#34](https://github.com/tailored-automation/puppet-module-patroni/pull/34) ([ghoneycutt](https://github.com/ghoneycutt))
- Fix CI [\#32](https://github.com/tailored-automation/puppet-module-patroni/pull/32) ([ghoneycutt](https://github.com/ghoneycutt))
- PDK Update [\#25](https://github.com/tailored-automation/puppet-module-patroni/pull/25) ([treydock](https://github.com/treydock))

## [v1.6.0](https://github.com/tailored-automation/puppet-module-patroni/tree/v1.6.0) (2021-11-02)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/v1.5.0...v1.6.0)

### Added

- Add ability to configure Patroni DCS configs [\#24](https://github.com/tailored-automation/puppet-module-patroni/pull/24) ([treydock](https://github.com/treydock))

## [v1.5.0](https://github.com/tailored-automation/puppet-module-patroni/tree/v1.5.0) (2021-06-19)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/v1.4.0...v1.5.0)

### Added

- Add Puppet 7 and use Github Actions [\#22](https://github.com/tailored-automation/puppet-module-patroni/pull/22) ([treydock](https://github.com/treydock))
- enable support for cipher flag [\#21](https://github.com/tailored-automation/puppet-module-patroni/pull/21) ([mrstrozy](https://github.com/mrstrozy))

## [v1.4.0](https://github.com/tailored-automation/puppet-module-patroni/tree/v1.4.0) (2021-04-28)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/v1.3.0...v1.4.0)

### Added

- Add support for specifying a custom pip provider [\#19](https://github.com/tailored-automation/puppet-module-patroni/pull/19) ([ghoneycutt](https://github.com/ghoneycutt))

## [v1.3.0](https://github.com/tailored-automation/puppet-module-patroni/tree/v1.3.0) (2021-04-07)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/v1.2.0...v1.3.0)

### Merged pull requests:

- Fix acceptance tests [\#14](https://github.com/tailored-automation/puppet-module-patroni/pull/14) ([treydock](https://github.com/treydock))
- Make managing the postgresql package repo optional [\#12](https://github.com/tailored-automation/puppet-module-patroni/pull/12) ([ghoneycutt](https://github.com/ghoneycutt))

## [v1.2.0](https://github.com/tailored-automation/puppet-module-patroni/tree/v1.2.0) (2020-10-17)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/v1.1.0...v1.2.0)

### Added

- Add better unit tests and support getting coverage [\#10](https://github.com/tailored-automation/puppet-module-patroni/pull/10) ([treydock](https://github.com/treydock))
- Support puppet/python v5.x [\#8](https://github.com/tailored-automation/puppet-module-patroni/pull/8) ([treydock](https://github.com/treydock))

### Fixed

- Set PIP\_PREFIX for python resources [\#9](https://github.com/tailored-automation/puppet-module-patroni/pull/9) ([treydock](https://github.com/treydock))

## [v1.1.0](https://github.com/tailored-automation/puppet-module-patroni/tree/v1.1.0) (2020-10-12)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/v1.0.1...v1.1.0)

### Fixed

- Readme updates [\#6](https://github.com/tailored-automation/puppet-module-patroni/pull/6) ([treydock](https://github.com/treydock))
- Ensure postgresql\_version is used [\#5](https://github.com/tailored-automation/puppet-module-patroni/pull/5) ([treydock](https://github.com/treydock))

## [v1.0.1](https://github.com/tailored-automation/puppet-module-patroni/tree/v1.0.1) (2020-09-28)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/v1.0.0...v1.0.1)

### Merged pull requests:

- Fix release process [\#4](https://github.com/tailored-automation/puppet-module-patroni/pull/4) ([treydock](https://github.com/treydock))
- Fix links in metadata and documentation [\#3](https://github.com/tailored-automation/puppet-module-patroni/pull/3) ([ghoneycutt](https://github.com/ghoneycutt))

## [v1.0.0](https://github.com/tailored-automation/puppet-module-patroni/tree/v1.0.0) (2020-09-25)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/0.1.6...v1.0.0)

### Merged pull requests:

- V1 [\#1](https://github.com/tailored-automation/puppet-module-patroni/pull/1) ([ghoneycutt](https://github.com/ghoneycutt))

## [0.1.6](https://github.com/tailored-automation/puppet-module-patroni/tree/0.1.6) (2020-08-13)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/0.1.5...0.1.6)

## [0.1.5](https://github.com/tailored-automation/puppet-module-patroni/tree/0.1.5) (2020-04-06)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/0.1.4...0.1.5)

## [0.1.4](https://github.com/tailored-automation/puppet-module-patroni/tree/0.1.4) (2020-01-17)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/0.1.3...0.1.4)

## [0.1.3](https://github.com/tailored-automation/puppet-module-patroni/tree/0.1.3) (2019-12-11)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/0.1.2...0.1.3)

## [0.1.2](https://github.com/tailored-automation/puppet-module-patroni/tree/0.1.2) (2019-11-13)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/0.1.1...0.1.2)

## [0.1.1](https://github.com/tailored-automation/puppet-module-patroni/tree/0.1.1) (2018-07-18)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/0.1.0...0.1.1)

## [0.1.0](https://github.com/tailored-automation/puppet-module-patroni/tree/0.1.0) (2018-07-11)

[Full Changelog](https://github.com/tailored-automation/puppet-module-patroni/compare/15ab29b2005e537b33a4fad75c22364ce436c439...0.1.0)



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
