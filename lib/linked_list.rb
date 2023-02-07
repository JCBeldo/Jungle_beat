require './lib/node'

class LinkedList
  attr_accessor :next_node
  attr_reader :head
  
  def initialize(head = nil, next_node = nil)
    @head = head
    @next_node = next_node
  end

  def append(data)
    if(self.head.nil?)
      @head = Node.new(data, @next_node = nil)
    else
      current_node = self.head
      new_node = Node.new(data, @next_node = nil)
      while(!current_node.next_node.nil?)
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
    return data
  end

  def count
    if(self.head.nil?)
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
  
  def to_string
    data_string = '' 
    current_node = @head
    if(self.head.nil?)
      data_string 
    else
      while(!current_node.next_node.nil?)
          # require 'pry'; binding.pry
        data_string << + ' ' + current_node.data
        current_node = current_node.next_node
      end
        # require 'pry'; binding.pry
      data_string << + ' ' + current_node.data
    end
  end
  # require 'pry'; binding.pry
  def prepend(data)
    if(self.head.nil?)
      @head = Node.new(data)
    else
      current_head = Node.new(data)
      current_head.next_node = @head
      @head = current_head
    end
  end
end
