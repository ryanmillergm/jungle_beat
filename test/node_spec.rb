require './test/test_helper.rb'

class NodeTest < MiniTest::Test

  def setup
    @node = Node.new("plop")
  end

  def test_node_exists
    assert_instance_of Node, @node
  end

  def test_node_has_data
    assert_equal "plop", @node.data
  end

  def test_next_node_nil
    assert_equal nil, @node.next_node
  end

  def test_tail_returns_true_if_next_node_is_nil
    assert_equal @node.tail?, true
  end

  def test_next_node_can_change_node_state
    data = 'doop'

    @node.next_node = data
    result = @node.next_node

    assert_equal data, result
  end


end

# require "./lib/node"
# > node = Node.new("plop")
# > node.data
# => "plop"
# > node.next_node
# => nil
