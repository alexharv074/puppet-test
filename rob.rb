#!/usr/bin/env ruby

require 'inifile'
require 'pp'

apps = [
  'test1',
  'test2',
  'test3',
]

attributes = {}

apps.each do |app|
  myini = IniFile.load("/tmp/#{app}/default/app.conf")
  myini.each_section do |section|
    attributes[app] = "#{myini[section]}"
  end
  pp attributes
end
