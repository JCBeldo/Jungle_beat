require 'rspec'
require './lib/linked_list'
require './lib/node'

RSpec.describe do
  describe '#initialize' do

  it 'exists' do
    list = LinkedList.new

    expect(list).to be_a(LinkedList)
  end
 
  it 'head gives nil' do
    list = LinkedList.new
    
    expect(list.head).to be_nil
  end 

  it 'append give data' do
    list = LinkedList.new
    
    expect(list.append('doop')).to eq('doop')
  end
  
  it 'list gives updated node' do
    list = LinkedList.new
    
    expect(list).to be_a(LinkedList)
  end

  it 'head.next_node gives nil' do
    list = LinkedList.new
    list.append('doop')
    
    expect(list.head.next_node).to be_nil
  end

  it 'count give integer' do
    list = LinkedList.new
    list.append('doop')

    expect(list.count).to eq(1)
  end

  it 'to_string give data' do
    list = LinkedList.new
    list.append('doop')
    
    expect(list.to_string).to eq(' doop')
  end

  it 'support more nodes' do
    list = LinkedList.new
    list.append('doop')
    list.append('deep')

    expect(list.head.next_node).to be_a(Node)
    expect(list.count).to eq(2)
    expect(list.to_string).to eq(' doop deep')
  end

  end
end

# require 'pry'; binding.pry