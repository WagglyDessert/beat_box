require './lib/node'

RSpec.describe Node do
  it "is a node" do
    node = Node.new("plop")
    #create Node class
    expect(node).to be_a(Node)
  end

  it "has data" do
    # instead of name, it is data. this is an attribute of Node class
    node = Node.new("plop")
    node.data
    expect(node.data).to eq("plop")
  end

  it "checks next_node" do
    node = Node.new("plop")
    node.next_node
    # method for checking the next node in line
    expect(node.next_node).to eq(nil)
  end
end