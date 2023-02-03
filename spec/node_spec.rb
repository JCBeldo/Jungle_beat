require 'rspec'
require './lib/node'

RSpec.describe Node do
  it '#initialize' do
  node =Node.new('bang')

  expect(node.data).to_a('bang')
  end
  
  it '#initialize2' do
    node = Node.new("plop")

    expect(node.next_node).to eq(nil)
 end
end