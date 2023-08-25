require './lib/node'
require './lib/linked_list'
require '.lib/multiple_nodes'

RSpec.describe LinkedList do
  it "is a LinkedList" do
    list = LinkedList.new
    #create LinkedList class
    expect(list).to be_a(LinkedList)
  end