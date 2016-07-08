class test {
  $myarray = hiera('myarray')
  notify { "${myarray[0]}": }
}
