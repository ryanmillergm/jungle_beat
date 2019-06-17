class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(data)
    empty? ? set_head(data) : set_tail(data)
  end

  def count
    return 0 if empty?
    count_node(head, 1)
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

  def count_node(node, counter)
    return counter if node.tail?
    count_node(node.next_node, counter += 1)
  end

end
