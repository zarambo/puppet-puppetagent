
class puppetagent::config {

  ini_setting { 'puppet/agent/ca_server':
    ensure  => bool2ensure(($puppetagent::ca_server != ''), 'present', 'absent'),
    path    => $puppetagent::agent_conf,
    section => 'main',
    setting => 'ca_server',
    value   => $puppetagent::ca_server,
  }

  ini_setting { 'puppet/agent/server':
    ensure  => 'present',
    path    => $puppetagent::agent_conf,
    section => 'agent',
    setting => 'server',
    value   => $puppetagent::master_server,
  }

  ini_setting { 'puppet/agent/environment':
    ensure  => 'present',
    path    => $puppetagent::agent_conf,
    section => 'agent',
    setting => 'environment',
    value   => $puppetagent::environment,
  }

  ini_setting { 'puppet/agent/run_interval':
    ensure  => 'present',
    path    => $puppetagent::agent_conf,
    section => 'agent',
    setting => 'run_interval',
    value   => $puppetagent::run_interval,
  }

  ini_setting { 'puppet/default/start':
    ensure  => 'present',
    path    => $puppetagent::default_conf,
    section => '',
    setting => 'START',
    value   => bool2ensure($puppetagent::enabled, 'yes', 'no'),
  }


#  file { $puppetagent::agent_conf:
#    ensure  => 'file',
#    content => template("puppetagent/puppet.conf.erb"),
#    owner   => 'root',
#    mode    => '0644',
#  }
}