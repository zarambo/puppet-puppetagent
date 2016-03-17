
class puppetagent::params {

  $master_server    = 'puppet'
  $enabled          = true
  $run_interval     = '15m'
  $environment      = $::environment

  $package_names    = ['puppet-agent']
  $package_version  = 'installed'
  $service_name     = 'puppet'
  $agent_conf       = '/etc/puppetlabs/puppet/puppet.conf'
  $default_conf     = '/etc/default/puppet'
}