# From within the directory, run the following command:
# ruby ./question_1.rb
# ===
test_input = [
  { id: 1, group: 'group1' },
  { id: 2, group: 'group1' },
  { id: 3, group: 'group2' },
  { id: 4, group: 'group3' },
  { id: 5, group: 'group3' },
  { id: 6, group: 'group3' },
]

results = []

grouped = test_input.group_by { |t| t[:group] }
grouped.each do |group|
  results << {
    id: group[0],
    children: group[1]
  }
end

puts "input: #{grouped.values.inspect}"
puts "output: #{results.inspect}"

# [
#   {
#     :id=>"group1",
#     :children=>[
#       {:id=>1, :group=>"group1"},
#       {:id=>2, :group=>"group1"}
#     ]
#   },
#   {
#     :id=>"group2",
#     :children=>[
#       {:id=>3, :group=>"group2"}
#     ]
#   },
#   {
#     :id=>"group3",
#     :children=>[
#       {:id=>4, :group=>"group3"},
#       {:id=>5, :group=>"group3"},
#       {:id=>6, :group=>"group3"}
#     ]
#   }
# ]
