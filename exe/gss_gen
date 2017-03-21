#!/usr/bin/env ruby
# encoding: utf-8

require 'gss'
require 'csv'


r = ARGV.shift.to_f
n = ARGV.shift.to_i

gss = GSS::GSS.new
points = gss.generate(r, n)
points.each do |p|
  print [p.r, p.theta, p.phi].to_csv
end
