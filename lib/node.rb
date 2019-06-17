class Node
  attr_reader :data
  attr_accessor :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end
end

# require "./lib/node"
# > node = Node.new("plop")
# > node.data
# => "plop"
# > node.next_node
# => nil
