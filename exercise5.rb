require_relative "list_node"

# Returns the list reversed
# def reverse(head)
#   current = head
#   new_head = ListNode.new(current.data)

#   while !current.next_node.nil?
#     new_head = ListNode.new(current.next_node.data, new_head)
#     current = current.next_node
#   end

#   return new_head
# end

def reverse(head)
  return nil if head.nil?
  current = head
  previous_node = nil
  
  until current.nil?
    next_node = current.next_node
    current.next_node = previous_node
    previous_node = current
    current = next_node
    
    
  end
  
  return previous_node
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
current = head
puts "Before the reverse the list is:"
until current.nil?
  puts current.data
  current = current.next_node
end

# Block 3
head = reverse(head)

# Block 4
current = head
puts "The list is now:"
until current.nil?
  puts current.data
  current = current.next_node
end
