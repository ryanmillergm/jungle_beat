class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(data)
    node = Node.new(data)
    if empty?
      self.head = node
    else
      last_node(head).next_node = node
    end
  end

  def count
    if @head.nil?
      0
    else
      1
    end
  end

  def to_string
    @head.data
  end

  def last_node(note)
    return note if note.tail?
    last_node(note.next_node)
  end

  def empty?
    @head.nil?
  end

end
