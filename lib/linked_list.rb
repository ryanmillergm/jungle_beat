class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(note)
    self.head = Node.new(note)
  end

  def count
    if head.nil?
      0
    else
      1
    end
  end

  def to_string
    @head.data
  end

end
