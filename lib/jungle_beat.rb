class JungleBeat
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    split_data = data.split(", ")
    split_data.each { |data| @list.append(data)}
  end

end
