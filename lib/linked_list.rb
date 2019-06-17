class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(note)
    self.head = Node.new(note)
  end

end
