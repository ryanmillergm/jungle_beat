class Node
  attr_reader :data

  def initialize(data)
    @data = data
  end
end

# require "./lib/node"
# > node = Node.new("plop")
# > node.data
# => "plop"
# > node.next_node
# => nil
