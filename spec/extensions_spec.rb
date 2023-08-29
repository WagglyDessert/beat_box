require './lib/node'
require './lib/linked_list'
#require './lib/beat_box'
require './lib/extensions'

RSpec.describe LinkedList do
  it "is a bb" do
    bb = BeatBox.new("deep")
    expect(bb).to be_a(BeatBox)
    expect(bb.list.head.data).to eq("deep")
  end

  it "can append data" do
    bb = BeatBox.new("deep")
    bb.append("Mississippi")
    expect(bb.all).to eq("deep")
  end

  it "can prepend data" do
    bb = BeatBox.new("deep")
    bb.prepend("tee tee tee Mississippi")
    expect(bb.all).to eq("tee tee tee deep")
  end

end