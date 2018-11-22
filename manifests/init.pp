class test {
  $clusters = hiera('elasticsearch::clusters')
  $myclusters = $clusters.filter |$cluster, $data| {
    ($::fqdn in $data['masterlist']) or ($::fqdn in $data['kibanalist'])
  }
  if ($myclusters.empty) {
    notify { 'No cluster for node':
      message => "${::fqdn} is not configured to be in any cluster in the hiera data",
    }
  }
  $cluster_name = $myclusters.keys[0]
  notice($cluster_name)
}

include test
