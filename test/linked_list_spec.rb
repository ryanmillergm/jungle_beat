require './test/test_helper'

class LinkedListTest < MiniTest::Test

  def setup
    @list = LinkedList.new
  end
end

# Iteration 1 - Append, To String, and Count (Single Node / Element)
# Great! We have nodes. In this iteration we'll create the LinkedList class and start filling in the basic functionality needed to append our first node.
#
# We'll be adding the following methods:
#
# append - adds a new piece of data (data can really be anything) to the list
# count - tells us how many things are in the list
# to_string - generates a string of all the elements in the list, separated by spaces
# But for now, focus on building these functions so they work for just the first element of data appended to the list (we'll handle multiple elements in the next iteration).
#
# Expected behavior:
#
# > require "./lib/linked_list"
# > list = LinkedList.new
# => <LinkedList head=nil #45678904567>
# > list.head
# => nil
# > list.append("doop")
# => "doop"
# > list
# => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_string
# => "doop"
