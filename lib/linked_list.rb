require './lib/node'

class LinkedList
  attr_accessor :head, :next_node
# :count
  
  def initialize(head = nil, next_node = nil)
    @head = head
    # @next_node = next_node
  end

  def head
    LinkedList.new(Node.new(@data)).each do |node|
      puts node.data
    end
    @data
  end

  def each
   return self
  end
  
  def count
    return length
  end
  
  def append(data)
    if(head.nil?)
      head = Node.new(data)
    else
      current_node = @head
      new_node = Node.new(data)
      while(!current_node.next_node.nil?)
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
    return data
  end
  # def count
  #   node.length
  # end
  # require 'pry'; binding.pry

end
