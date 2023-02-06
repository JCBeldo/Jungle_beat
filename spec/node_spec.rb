require 'rspec'
require './lib/node'

RSpec.describe Node do
  describe '#initialize' do
    
    it 'exists' do
      node = Node.new('bang', nil)

      expect(node).to be_a(Node)
    end
  
    it 'reads data' do
      node = Node.new('bang', nil)

      expect(node.data).to eq('bang')
    end

    it 'gives nil' do
      node = Node.new('bang', nil)

      expect(node.next_node).to be_nil
    end
  end
end