class test {
  notice(inline_template("<% scope().call_function('lookup',['profile::example::firewalls']).each do |server_class, data| -%>
Server class: <%= server_class %>
  <%- data.each do |key, value| -%>
  <%= key %> --- <%= value %>
  <%- end -%>
<% end -%>
"))
}

include test
