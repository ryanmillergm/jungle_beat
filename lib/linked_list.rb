class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(data)
    empty? ? set_head(data) : set_tail(data)
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

  def new_node(data)
    Node.new(data)
  end

  private

  def set_head(data)
    self.head = new_node(data)
  end

  def set_tail(data)
    last_node(head).next_node = new_node(data)
  end

end
