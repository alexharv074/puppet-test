#class test (
#  Struct[{
#    name          => String,
#    region        => String,
#    single_nat_gw => Boolean,
#    create        => Boolean,
#    supernet      => String,
#  }] $prod_vpc = {}
#) {
#  notice($prod_vpc)
#}

class test (
  Struct[{
    name          => String,
    region        => String,
    single_nat_gw => Boolean,
    create        => Boolean,
    supernet      => String,
  }] $prod_vpc = undef
) {
  notice($prod_vpc)
}

include test
