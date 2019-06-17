require './test/test_helper.rb'

class NodeTest < Minitest::Test

  def setup
    @node = Node.new("plop")
  end

  def test_node_exists
    assert_instance_of Node, @node
  end

  def test_node_has_data
    assert_equal "plop", @node.data
  end

end

# require "./lib/node"
# > node = Node.new("plop")
# > node.data
# => "plop"
# > node.next_node
# => nil
