require 'spec_helper'

describe 'profile::bind' do
 it 'should write a compiled catalog' do
   is_expected.to compile.with_all_deps
   File.write(
     'myclass.json',
     PSON.pretty_generate(catalogue)
   )
 end
end
