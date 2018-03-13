#!/usr/bin/env ruby

require 'inifile'
require 'pp'

attributes = {}

apps = Dir.glob("/tmp/**/app.conf").map { |f| f.split('/')[2] }
apps.each do |app|
  myini = IniFile.load("/tmp/#{app}/default/app.conf")
  myini.each_section do |section|
    attributes[app] = myini[section]
  end
  pp attributes
end
