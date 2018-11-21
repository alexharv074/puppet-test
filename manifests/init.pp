class test {
  $clusters = hiera('elasticsearch::clusters')
  $masterlist = $clusters.reduce([]) |$memo, $x| {
    $memo + $x[1]['masterlist']
  }
  if ! ($::fqdn in $masterlist) {
    notify { 'No cluster for node':
      message => "${::fqdn} is not configured to be in any cluster in the hiera data",
    }
  }
}

include test
