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
    @list.append('doop')
    @list.append('deep')
    @list.append('bop')

    result = @list.head.next_node.next_node.data

    assert_equal 'bop', result
  end

  def test_count_three_nodes
    @list.append('doop')
    @list.append('deep')
    @list.append('bop')

    result = @list.count
    assert_equal 3, result
  end

  def test_to_string_works_with_three_nodes
    @list.append('doop')
    @list.append('deep')
    @list.append('bop')
    expected = 'doop, deep, bop'

    result = @list.to_string

    assert_equal expected, result
  end

  def test_prepend_appends_to_head
    expected = 'dop, plop, suu'
    @list.append('plop')
    @list.append('suu')
    @list.prepend('dop')

    result = @list.to_string

    assert_equal expected, result
  end

  def test_insert
    expected = "dop, woo, plop, suu"
    @list.append('plop')
    @list.append('suu')
    @list.prepend('dop')

    result = @list.insert(1, 'woo')

    assert_instance_of Node, result
    assert_equal expected, @list.to_string
  end

  def test_find_from_middle
    expected = "shi"
    @list.append('deep')
    @list.append('woo')
    @list.append('shi')
    @list.append('shu')
    @list.append('blop')

    result = @list.find(2, 1)

    assert_equal expected, result
  end

  def test_find_from_start
    expected = "woo, shi, shu"
    @list.append('deep')
    @list.append('woo')
    @list.append('shi')
    @list.append('shu')
    @list.append('blop')

    result = @list.find(1, 3)

    assert_equal expected, result
  end

  def test_includes_returns_true_when_given_data_present
    @list.append('deep')
    @list.append('woo')
    @list.append('shi')
    @list.append('shu')
    @list.append('blop')

    result = @list.includes?('deep')

    assert_equal true, result
  end

  def test_includes_returns_false_when_given_data_not_present
    @list.append('deep')
    @list.append('woo')
    @list.append('shi')
    @list.append('shu')
    @list.append('blop')

    result = @list.includes?('dep')

    assert_equal false, result
  end

  def test_pop
    @list.append('deep')
    @list.append('woo')
    @list.append('shi')
    @list.append('shu')
    @list.append('blop')

    result = @list.pop

    assert_equal 'blop', result.data

    result2 = @list.pop

    assert_equal 'shu', result2.data
    assert_equal 'deep, woo, shi', @list.to_string
  end

end

# > list.to_string
# => "deep woo shi shu blop"
# > list.find(2, 1)
# => "shi"
# > list.find(1, 3)
# => "woo shi shu"
# > list.includes?("deep")
# => true
# > list.includes?("dep")
# => false
# > list.pop
# => "blop"
# > list.pop
# => "shu"
# > list.to_string
# => "deep woo shi"
