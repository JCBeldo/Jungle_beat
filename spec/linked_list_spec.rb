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
    
    expect(list.to_string).to eq('doop')
  end
  
  end
  describe 'supports more nodes' do

  it 'support more nodes' do
    list = LinkedList.new
    list.append('doop')
    list.append('deep')

    expect(list.head.next_node).to be_a(Node)
    expect(list.count).to eq(2)
    expect(list.to_string).to eq('doop deep')
  end
  end 
  describe 'augments list' do
    
  it 'augments list' do
    list = LinkedList.new
    # list.append('plop')
    # list.append('suu')
    # list.prepend('dop')
    # list.insert(1, 'woo')
    
    expect(list.append('plop')).to eq('plop')
    expect(list.to_string).to eq('plop')
    expect(list.append('suu')).to eq('suu')
    expect(list.prepend('dop')).to eq('dop')
    expect(list.to_string).to eq('dop plop suu')
    expect(list.count).to eq(3)
    expect(list.insert(1, 'woo')).to eq('woo')
    expect(list.to_string).to eq('dop woo plop suu')
  end
  it 'seeks and destroys' do
    list = LinkedList.new

    expect(list.append('flick')).to eq('flick')
    expect(list.append('deep')).to eq('deep')
    require 'pry'; binding.pry
    expect(list.append('doop')).to eq('doop')
    expect(list.to_string).to eq('flick deep doop')
    expect(list.includes?('deep')).to eq(true)
    expect(list.includes?('dep')).to eq(false)
    expect(list.pop).to eq('doop')
    expect(list.pop).to eq('deep')
    expect(list.to_string).to eq('flick')
  end
  end
end

# require 'pry'; binding.pry