
class puppetagent (

  $master_server    = $puppetagent::params::master_server,
  $ca_server        = '',
  $run_interval     = $puppetagent::params::run_interval,
  $environment      = $puppetagent::params::environment,

  $enabled          = $puppetagent::params::enabled,

  $service_name     = $puppetagent::params::service_name,
  $package_names    = $puppetagent::params::package_names,
  $package_version  = $puppetagent::params::package_version,
  $agent_conf       = $puppetagent::params::agent_conf,
  $default_conf     = $puppetagent::params::default_conf,

) inherits puppetagent::params {

  anchor { 'puppetagent::begin': }
  ->
  class { 'puppetagent::install': }
  ->
  class { 'puppetagent::config': }
  ->
  class { 'puppetagent::service': }
  ->
  anchor { 'puppetagent::end': }
}