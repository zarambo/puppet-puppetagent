
class puppetagent::service {

  service { $puppetagent::service_name:
    ensure  => bool2ensure($puppetagent::enabled, 'running', 'stopped'),
    enable  => $puppetagent::enabled,
  }
}