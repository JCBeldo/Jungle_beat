require './lib/node'

class LinkedList
  attr_accessor :next_node
  attr_reader :head
  
  def initialize(head = nil, next_node = nil)
    @head = head
    # self.next_node = nil
  end

  def append(data)
    if(@head.nil?)
      @head = Node.new(data, @next_node = nil)
    else
      current_node = self.head
      new_node = Node.new(data, @next_node= nil)
      while(!current_node.next_node.nil?)
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
    return data
  end

  def count
    if(@head.nil?)
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
    string = '' 
    current_node = @head
    if(self.head.nil?)
      return string 
    else
      while(!current_node.next_node.nil?)
        string << current_node.data
        current_node = current_node.next_node
        # head_data = head_data.next_node
      end
      string << current_node.data
    end
  string
  end

  # require 'pry'; binding.pry

end
