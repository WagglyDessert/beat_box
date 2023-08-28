require './lib/node'
require './lib/linked_list'
require './lib/beat_box'

RSpec.describe LinkedList do
  it "is a bb" do
    bb = BeatBox.new
    expect(bb).to be_a(BeatBox)
  end

  it "lists" do
    bb = BeatBox.new
    expect(bb.list).to be_a(LinkedList)
  end

  it "does not have a head in its list" do
    bb = BeatBox.new
    expect(bb.list.head).to eq(nil)
  end

  it "can append data" do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    expect(bb.list.head.data).to eq("deep")
  end

  it "can find next_node data" do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    expect(bb.list.head.next_node.data).to eq("doo")
  end

  it "can count nodes from two appendages" do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    bb.append("woo hoo shu")
    expect(bb.count).to eq(6)
  end

  it "can play sound" do
    bb = BeatBox.new
    bb.append("deep doo ditt woo hoo shu")
    expect(bb.count).to eq(6)
    expect(bb.list.count).to eq(6)
    bb.play
    expect(bb.play).to eq(`say -r 500 -v Boing "deep doo ditt woo hoo shu"`)
  end
end