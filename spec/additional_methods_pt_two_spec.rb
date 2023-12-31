require './lib/node'
require './lib/linked_list'
#require './lib/multiple_nodes'

RSpec.describe LinkedList do
  it "is a string" do
    list = LinkedList.new
    list.append("shi")
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")
    list.insert(3, "shu")
    expect(list.to_string).to eq("deep woo shi shu blop")
  end

  it "can find 'shi'" do
    list = LinkedList.new
    list.append("shi")
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")
    list.insert(3, "shu")
    expect(list.find(2, 1)).to eq("shi")
  end

  it "can find 'woo shi shu'" do
    list = LinkedList.new
    list.append("shi")
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")
    list.insert(3, "shu")
    expect(list.find(1, 3)).to eq("woo shi shu")
  end

  it "includes 'deep'" do
    list = LinkedList.new
    list.append("shi")
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")
    list.insert(3, "shu")
    expect(list.includes?("deep")).to eq(true)
  end

  it "includes 'dep'" do
    list = LinkedList.new
    list.append("shi")
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")
    list.insert(3, "shu")
    expect(list.includes?("dep")).to eq(false)
  end

  it "can pop'" do
    list = LinkedList.new
    list.append("shi")
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")
    list.insert(3, "shu")
    expect(list.pop).to eq("blop")
  end

  it "can pop twice" do
    list = LinkedList.new
    list.append("shi")
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")
    list.insert(3, "shu")
    list.pop
    expect(list.pop).to eq("shu")
  end

  it "can pop'" do
    list = LinkedList.new
    list.append("shi")
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")
    list.insert(3, "shu")
    list.pop
    list.pop
    expect(list.to_string).to eq("deep woo shi")
  end

end