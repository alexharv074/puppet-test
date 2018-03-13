#!/usr/bin/env ruby

require 'inifile'
require 'pp'

apps = `/usr/bin/find /private/tmp -name app.conf|/usr/bin/awk -F/ '{print $(NF-2)}'|sort -r| uniq`

attributes = {}

apps.split("\n").each do |app|
  myini = IniFile.load("/tmp/#{app}/default/app.conf")
  myini.each_section do |section|
    attributes[app] = myini[section]
  end
  pp attributes
end
