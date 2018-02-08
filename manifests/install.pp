define test::install ($certificates) {
  $domain = $name
  $certificatefqdn = $certificates["$domain"]
  $certificatefile = $certificatefqdn['certificatefile']
  $certificatepass = $certificatefqdn['certificatepass']
  notify{"This is the certificate file: $certificatefile" :}
}
