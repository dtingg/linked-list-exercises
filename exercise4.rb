require_relative "list_node"

# Return true if the value 
#   is in the list and 
#   return false otherwise
def find(head, value)
  current = head
  
  until current.next_node.nil?
    if current.data == value
      return true
    end
    
    current = current.next_node
  end
  
  return false
end

# Block 1 - Create the list
head = ListNode.new(8)
head = ListNode.new(7, head)
head = ListNode.new(6, head)
head = ListNode.new(5, head)
head = ListNode.new(4, head)
head = ListNode.new(3, head)
head = ListNode.new(2, head)
head = ListNode.new(1, head)


# Block 2
num = 0
puts "What number do you want to find?"
until num > 0 && num < 10
  num = gets.chomp.to_i
  puts "Number 1-9:" unless num > 0 && num < 10
end

if find(head, num)
  puts "That number is in the list"
else
  puts "That number is not in the list"
end