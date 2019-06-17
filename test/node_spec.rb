require './test/test_helper.rb'

class NodeTest < Minitest::Test

  def setup
    @node = Node.new
  end

  def test_node_exists
    assert_instance_of @node
  end
  
end
