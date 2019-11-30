class test {
  notice(inline_template("<% @example = scope().call_function('hiera',['profile::example::firewalls']) -%>
show me the array!
<%= @example %>"))
}

include test
