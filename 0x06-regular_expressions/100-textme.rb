#!/usr/bin/env ruby

log_line = ARGV[0]

# Extract sender, receiver, and flags from log line using regular expressions
sender = log_line[/\[from:([a-zA-Z0-9\+]+)\]/, 1]
receiver = log_line[/\[to:([a-zA-Z0-9\+]+)\]/, 1]
flags = log_line[/\[flags:([-0-9:]+)\]/, 1]

# Output the results in the specified format
puts "#{sender},#{receiver},#{flags}"

