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
    count_node(@head, 1)
  end

  def to_string
    return "" if empty?
    return sentence_starter if @head.tail?
    stringify_node(@head.next_node, sentence_starter)
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

  def prepend(data)
    node = new_node(data)
    node.next_node = @head
    self.head = node
  end

  def insert(position, data)
    node = new_node(data)
    prior_node = node_at(@head, position - 1)
    next_node = node_at(@head, position)
    prior_node.next_node = node
    node.next_node = next_node
    return node
  end

  def find(start, count)
    node = node_at(@head, start)
    return sentence_starter(node) if count == 1
    stringify_node(node.next_node, sentence_starter(node), count -= 1)
  end

  def includes?(data)
    find_by_data(@head, data)
  end

  def pop
    new_tail = node_at(@head, count - 2)
    old_tail = new_tail.next_node
    new_tail.next_node = nil
    old_tail
  end


  private

  def set_head(data)
    self.head = new_node(data)
  end

  def set_tail(data)
    last_node(@head).next_node = new_node(data)
  end

  def count_node(node, counter)
    return counter if node.tail?
    count_node(node.next_node, counter += 1)
  end

  def concat(sentence, node)
    "#{sentence}, #{node.data}"
  end

  def stringify_node(node, sentence, terminal = nil, counter = 1)
    return concat(sentence, node) if node.tail? || terminal == counter
    stringify_node(node.next_node, concat(sentence, node), terminal, counter += 1)
  end

  def sentence_starter(node = @head)
    "#{node.data}"
  end

  def node_at(node, position, counter=0)
    return node if position == counter
    node_at(node.next_node, position, counter += 1)
  end

  def find_by_data(node, data)
    return true if node.data == data
    return false if node.tail?
    find_by_data(node.next_node, data)
  end

end
