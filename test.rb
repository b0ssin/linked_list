require './linked_list.rb'
puts "Let's test this code!"

puts "Do you wish to make a list? (y/n)"
user_input = gets.chomp
list = Linked_List.new() if user_input == 'y'

puts "Enter data for 3 new nodes?"
user_input = gets.chomp
node1 = Node.new(user_input)
puts "2 more nodes to make..."
user_input = gets.chomp
node2 = Node.new(user_input)
puts 'Last one...'
user_input = gets.chomp
node3 = Node.new(user_input)

node1.next = node2
node2.next = node3
puts 'Appending nodes to list'
list.append node2
list.append node3

puts 'Prepending node1 to list'
list.prepend node1

puts "Going to print the size, if it's not three, it is incorrect"
p list.size

puts "The head should be node1 value"
p list.head

puts "The tail value should be node3 value"
p list.tail

puts "Let's see if node2 is in the right index(1)"
p list.at(1)

puts "Removing node 3"
p list.pop

puts "We're going to see if node3 is in there"
puts "#{list.contains?(node3)}"

puts "Let's find node 1's index"
puts "#{list.find(node1)}" # may have to change to node1's data

puts "Now we're going to put our list into string with .to_s"
puts list.to_s




