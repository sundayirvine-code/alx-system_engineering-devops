#!/usr/bin/env ruby
puts ARGV[0].scan(/([a-zA-Z0-9:-\]\[]+)from:([a-zA-Z0-9]+)]([a-zA-Z0-9:-\]\[]+)/.group(2)).join
