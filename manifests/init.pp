class profile::bind {
  include bind
  $conf = lookup('bind::zone')
  create_resources(profile::bind::make::zone, $conf)
}

define profile::bind::make::zone (
  Enum['present','absent'] $ensure,
  String         $zone_contact,
  Array[String]  $zone_ns,
  String         $zone_serial,
  String         $zone_ttl,
  String         $zone_origin,
  Hash[String, Hash[String, String]] $hash_data,
) {
  bind::zone { $name:
    ensure       => $ensure,
    zone_contact => $zone_contact,
    zone_ns      => $zone_ns,
    zone_serial  => $zone_serial,
    zone_ttl     => $zone_ttl,
    zone_origin  => $zone_origin,
  }
}

include profile::bind
