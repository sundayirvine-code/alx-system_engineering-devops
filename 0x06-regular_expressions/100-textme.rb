#!/usr/bin/env ruby
puts ARGV[0].scan(/([a-zA-Z0-9:-\]\[]+)from:([a-zA-Z0-9]+)\]/).map { |match| match[2] }.join
