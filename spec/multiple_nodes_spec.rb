#require './lib/node'
#require './lib/linked_list'
require './lib/multiple_nodes'

RSpec.describe LinkedList do
  it "is a LinkedList" do
    list = LinkedList.new
    #create LinkedList class
    expect(list).to be_a(LinkedList)
  end

  it "is a head" do
    list = LinkedList.new
    list.head
    expect(list.head).to eq(nil)
  end

  it "is doop" do
    list = LinkedList.new
    list.append("doop")
    expect(list.head).to be_a(Node)
  end

  it "does not have a next_node" do
    list = LinkedList.new
    list.append("doop")
    #list.head.next_node
    expect(list.head.next_node).to eq(nil)
  end

  it "has a next_node" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    expect(list.head.next_node.data).to eq("deep")
  end

  it "counts a node in addition to the head" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    expect(list.count).to eq(2)
  end

  it "has a next_node" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("boop")
    expect(list.to_string).to eq("doop deep boop")
  end


end