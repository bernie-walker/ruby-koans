
sides = ["a", "b", "c"]

si = sides.each_with_index do |el, i|
  "#{1} #{el}"
end

puts si == sides