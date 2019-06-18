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
    @list.append("bop")

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

  def test_new_node_returns_a_new_node
    result = @list.new_node('doop')

    assert_instance_of Node, result
    assert_equal 'doop', result.data
  end

  def test_append_three_nodes
    @list = LinkedList.new
    @list.append('doop')
    @list.append('deep')
    @list.append('bop')

    result = @list.head.next_node.next_node.data

    assert_equal 'bop', result
  end

  def test_count_three_nodes
    @list = LinkedList.new
    @list.append('doop')
    @list.append('deep')
    @list.append('bop')

    result = @list.count
    assert_equal 3, result
  end

  def test_to_string_works_with_three_nodes
    @list = LinkedList.new
    @list.append('doop')
    @list.append('deep')
    @list.append('bop')
    expected = 'doop, deep, bop'

    result = @list.to_string

    assert_equal expected, result
  end

  def test_prepend_appends_to_head
    expected = 'bop, doop, deep'
    @list = LinkedList.new
    @list.append('doop')
    @list.append('deep')
    @list.prepend('bop')

    result = @list.to_string

    assert_equal expected, result
  end
end

# > require "./lib/linked_list"
# > list = LinkedList.new
# > list.append("plop")
# => "plop"
# > list.to_string
# => "plop"
# > list.append("suu")
# => "suu"
# > list.prepend("dop")
# => "dop"
# > list.to_string
# => "dop plop suu"
# > list.count
# => 3
# > list.insert(1, "woo")
# => "woo"
# list.to_string
# => "dop woo plop suu"
