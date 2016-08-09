# From within the directory, run the following command:
# ruby ./question_3.rb
# ===
# need to make array for delete
test_array = (1..1000000).to_a
# rand returns a zero-based index
test_for = rand(1000000) + 1

test_array.delete(test_for)

# calculate sum of range
sum = (1000000 * 1000001)/2
# subtract array sum from range sum to get missing number
missing_number = sum - test_array.inject(:+)

puts "test_for: #{test_for}"
puts "missing_number: #{missing_number}"
puts "Equal? #{test_for == missing_number}"
