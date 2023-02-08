require './lib/node'

class LinkedList
  attr_accessor :next_node, :head, :position, :count
  
  def initialize(head = nil, next_node = nil)
    @head = head
    # @next_node = next_node
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
      current_node = self.head
      while(!current_node.next_node.nil?)
        current_node = current_node.next_node
        count += 1
      end
    end
    count
  end
  
  def to_string
    data_string = '' 
    current_node = self.head
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
      current_node = Node.new(data)
      current_node.next_node = self.head
      @head = current_node
    end
    return data
  end

  def insert(position, data)
    if(self.head.nil?)
      position = 0
        # position = @position
      return 'empty'
    else
      current_node = self.head
      (position - 1).times do
      current_node = current_node.next_node
    end
    new_node = Node.new(data)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end
  return data
  end
  # require 'pry'; binding.pry

  # def find(position, num_elements)
  #   if(self.head.nil?)
  #     position = @position
  #     return 'empty'
  #   else
  #     current_node = @head
  #     (position - 1).times do
  #     current_node = current_node.next_node
  #     num_elements = position.to_string
  #     end
  #   found_node = current_node.position
  #   new_node.next_node = current_node.next_node
  #   current_node.next_node = new_node
  #   end
  #   return 
  # end

  # def find(position, num_elements)
  #   current_node = self.head
  #   (position).times do    
  #     until(current_node == nil || current_node.next_node == nil || current_node.position == position) do
  #     current_node = current_node.next_node
  #     num_elements = position.to_string

  #   end
  #   end
  #   return 'empty' if current_node == nil
  #   return current_node.num_elements
  # end

  def includes?(data)
    current_node = self.head   
      until(current_node == nil || current_node.next_node == nil || current_node.data == data) do
      current_node = current_node.next_node
    end
    return false if current_node.data != data
    return true
  end

  def pop
    if(self.head.nil?)
      return 'empty'
    else current_node = self.head
      while (!current_node.next_node.next_node.nil?)
      current_node = current_node.next_node
      end
    tail_node = current_node.next_node
    current_node.next_node = nil
  end
    tail_node.data
  end
end
  # require 'pry'; binding.pry
