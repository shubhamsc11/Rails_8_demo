def longest_common_prefix(strs)
  return "" if strs.empty?
  byebug
  # Start with the first string as the prefix
  prefix = strs[0]

  strs.each do |str|
    byebug
    # Reduce the prefix until it matches the start of the current string
    while str.index(prefix) != 0
      byebug
      prefix = prefix[0...-1]
      return "" if prefix.empty?
    end
  end
  byebug
  prefix
end

# Example usage

def longest_common_prefix(strs)
  # strs = ["dog", "racecar", "car"]
  return "" if strs.empty?

  # Start with the first string as the prefix
  prefix = strs[0]

  strs.each do |str|
    # Reduce the prefix until it matches the start of the current string
    # Solution 1 -
    # while str.index(prefix) != 0
    #   prefix = prefix[0...-1]
    #   return "" if prefix.empty?
    # end

    # Solution 2 -
    until str.start_with?(prefix)
      prefix = prefix[0...-1]
      prefix = "" if prefix.empty?
    end
  end

  prefix
end

puts longest_common_prefix(["flower", "flow", "flight"]) # Output: "fl"
puts longest_common_prefix(["dog", "racecar", "car"])    # Output: ""

