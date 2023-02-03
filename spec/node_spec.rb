require 'rspec'
require './lib/node'

RSpec.describe Node do
  describe '#initialize' do
    
    it 'exists' do
      node = Node.new('bang')

      expect(node).to be_a(Node)
    end
  
    it 'reads data' do
      node = Node.new('bang')

      expect(node.data).to eq('bang')
    end

    it 'give nil' do
      node = Node.new('bang')

      expect(node.next_node).to eq(nil)
    end
  end
end