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
   
  def append(data)
    if(head.nil?)
      head = Node.new(data)
    else
      current_node = @head
      new_node = Node.new(data)
      while(!current_node.next_node.nil?)
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
    return data
  end

  def count
    if(head.nil?)
      count = 0
    else
      count = 1
      current_node = @head
      while(!current_node.next_node.nil?)
        current_node = current_node.next_node
        count += 1
      end
    end
    count
  end
  # require 'pry'; binding.pry

end
