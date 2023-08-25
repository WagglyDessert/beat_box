require './lib/node'
require './lib/linked_list'

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
    expect(list.head.data).to eq("doop")
  end

  it "describes head data" do
    list = LinkedList.new
    list.append("doop")
    expect(list.head.data).to eq("doop")
  end

  it "has a next_node" do
    list = LinkedList.new
    list.append("doop")
    #list.head.next_node
    expect(list.head.next_node).to eq(nil)
  end

  it "can count" do
    list = LinkedList.new
    list.append("doop")
    expect(list.count).to eq(1)
  end

  it "is a string" do
    list = LinkedList.new
    list.append("doop")
    expect(list.to_string).to eq("doop")
  end

end