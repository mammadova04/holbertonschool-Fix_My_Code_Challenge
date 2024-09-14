#!/usr/bin/env ruby
###
# Sort integer arguments (ascending)
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next unless arg =~ /^-?\d+$/

    # convert to integer
    i_arg = arg.to_i

    # insert result at the right position
    inserted = false
    i = 0
    while i < result.size do
        if result[i] > i_arg
            result.insert(i, i_arg)
            inserted = true
            break
        end
        i += 1
    end
    result << i_arg unless inserted
end

puts result

