require "yaml"
require "erb"

context_path = ARGV[0]
context = YAML.load_file("test.yml")

$creds = {"iacbox"=>{"basic"=>{"name"=>"", "password"=>""}}, "nexus"=>{"basic"=>{"name"=>"cpreader", "password"=>"swordfish"}}}

def get_yaml(obj)
  YAML.dump($creds).sub(/^---/,'').gsub(/\n/m,"\n  ")
end

template = """
<%= get_yaml( context ) %>
"""
renderer = ERB.new(template, nil, '-')
puts renderer.result()
