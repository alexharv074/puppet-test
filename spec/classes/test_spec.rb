require 'spec_helper'

describe 'test' do
  it { File.write('myclass.json', PSON.pretty_generate(catalogue)) }
  it {
    is_expected.to contain_file('/etc/httpd/conf.d/example.com.conf')
    [
"<VirtualHost *:80>
  DocumentRoot \"/www/example1\"
  ServerName www.example.com
</VirtualHost>
",
"<VirtualHost *:80>
  DocumentRoot \"/www/example2\"
  ServerName www.example.org
</VirtualHost>
"
    ].map{|k| k.split("\n")}.each do |text|
      require 'pry'; binding.pry
      verify_contents(catalogue, '/etc/httpd/conf.d/example.com.conf', text)
    end
  }
end
