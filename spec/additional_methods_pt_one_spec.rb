require './lib/node'
require './lib/linked_list'
#require './lib/multiple_nodes'

RSpec.describe LinkedList do
  it "is a LinkedList" do
    list = LinkedList.new
    #create LinkedList class
    expect(list).to be_a(LinkedList)
  end

  it "adds data 'plop" do
    list = LinkedList.new
    list.append("plop")
    expect(list.to_string).to eq("plop")
  end

  it "addds data 'suu" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    expect(list.to_string).to eq("plop suu")
  end

  it "prepends data 'dop'" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    expect(list.to_string).to eq("dop plop suu")
  end

  it "will count prepended and appended data" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    expect(list.count).to eq(3)
  end

  it "insert" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    list.insert(3, "pee")
    expect(list.to_string).to eq("dop woo plop pee suu")
  end

end
