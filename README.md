# Vault Puppet Module for Boxen

Installs [HashiCorp Vault](https://vaultproject.io/).

## Usage

```puppet
# Install the default version of Vault
include vault
```

## Parameters

You can customise this module by configuring some optional class parameters. Usually you'd do this via Hiera, but you could also explicitly pass those parameters in puppet code like `class { 'vault': version => '0.2.0', }`.

* `version`: The version of HashiCorp Vault to install. For example, if you specify `0.2.0`, the module would install Vault 0.2.0

All of these parameters have sensible defaults, and are provided if you need more control.

Example hiera data in YAML:

```yaml
vault::version: '0.2.0'
```

## Required Puppet Modules

* `boxen`

## Development

Set `GITHUB_API_TOKEN` in your shell with a [Github oAuth Token](https://help.github.com/articles/creating-an-oauth-token-for-command-line-use) to raise your API rate limit. You can get some work done without it, but you're less likely to encounter errors like `Unable to find module 'boxen/puppet-boxen' on https://github.com`. You can also set this environment variable securely on Travis to ensure your CI builds don't run into the same issue - check out Travis's [docs on repository settings](http://docs.travis-ci.com/user/environment-variables/).

Then write some code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
