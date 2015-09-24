# Install HashiCorp Vault into /Applications
#
# Usage:
#
#   include vault
#
class vault (
  $ensure   = 'present'
) {

  require brewcask

  package { 'vault':
    ensure          => $ensure,
    provider        => 'brewcask',
    install_options => [
      '--appdir=/Applications',
      "--binarydir=${boxen::config::bindir}"
    ]
  }

}
