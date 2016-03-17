
class puppetagent::install {

  package { $puppetagent::package_names:
    ensure  => $puppetagent::package_version,
  }

}