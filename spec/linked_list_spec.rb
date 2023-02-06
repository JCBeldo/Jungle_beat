require 'rspec'
require './lib/linked_list'

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
  end
end

require 'pry'; binding.pry