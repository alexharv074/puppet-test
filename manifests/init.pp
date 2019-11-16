$h = downcase(regsubst($facts['hostname'], '..(.)$', '01\1'))
$n = "${h}.ex-ample.com"
notice($n)
