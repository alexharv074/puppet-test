class test {
  $clusters = hiera('elasticsearch::clusters')

  $clusters.each |String $cluster_name, Hash $cluster| {

    $masterlist = $cluster['masterlist']
    $kibanalist = $cluster['kibanalist']

    if ! ($::fqdn in $masterlist) and ! ($::fqdn in $kibanalist) {
      notify { 'No cluster for node':
        message => "${::fqdn} is not configured to be in any cluster in the hiera data",
      }
    }
  }
}

include test
