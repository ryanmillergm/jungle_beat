require './test/test_helper'

class LinkedListTest < MiniTest::Test

  def setup
    @list = LinkedList.new
  end

  def test_linked_list_exists
    assert_instance_of LinkedList, @list
  end

  def test_linked_list_head_default_is_nil
    assert_nil @list.head
  end

  def test_list_can_append_new_node
    result = @list.append("doop")

    assert_equal "doop", result.data
    assert_equal result, @list.head
  end

  def test_next_node_nil
    result = @list.append("doop")

    assert_nil @list.head.next_node
  end

  def test_count_how_many_things_are_in_list
    result = @list.append("doop")

    assert_equal 1, @list.count
  end

  def test_list_to_string
    result = @list.append("doop")

    assert_equal "doop", @list.to_string
  end

  def test_can_append_multiple_nodes
    @list.append("doop")
    @list.append("deep")

    result = @list.head.next_node.data
    assert_equal "deep", result
  end

  def test_last_node_returns_the_tail
    @list.append('deep')

    result = @list.last_node(@list.head)

    assert_instance_of Node, result
    assert_equal 'deep', result.data
  end

  def test_empty_returns_true_when_head_is_nil
    assert_equal true, @list.empty?
  end

  def test_empty_returns_false_when_head_is_not_nil
    @list.append('deep')

    assert_equal false, @list.empty?
  end
end

# > require "./lib/linked_list"
# > list = LinkedList.new
# => <LinkedList head=nil #45678904567>
# > list.head
# => nil
# > list.append("doop")
# => "doop"
# > list
# => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
# > list.head
# => <Node data="doop" next_node=nil #5678904567890>
# > list.head.next_node
# => nil
# > list.append("deep")
# => "deep"
# > list.head.next_node
# => <Node data="deep" next_node=nil #5678904567890>
# > list.count
# => 2
# > list.to_string
# => "doop deep"
