def tick_toward start, target
  result = [start]
  while result.last != target
    result << result.last.each_with_index.map do |x,i|
      x == target[i] ? x : x + (target[i]>start[i] ? 1 : -1)
    end
  end
  result
end

def get_headline(query, rule)
  require 'active_support/core_ext/string'
  words, toReturn = rule.singularize.downcase.split(/\W+/), []
  words.select{|x| toReturn << x  if query.downcase.split(/\W+/).include?(x) }
  toReturn == nil ? nil : toReturn.each {|x| x.capitalize!}.join(" ").strip
  # Return the formatted or default headline
end


print get_headline("buy a cheap computer online", "{KeyWord:Cheap Computers Online}")