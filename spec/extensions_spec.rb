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

  it "can play sounds" do
    bb = BeatBox.new("deep dop dop deep")
    expect(bb.play).to eq(`say "deep dop dop deep"`)
  end

  it "can change rate sound plays" do
    bb = BeatBox.new("deep dop dop deep")
    bb.rate = 100
    expect(bb.rate = 100).to eq(100)
  end

  it "can play sounds" do
    bb = BeatBox.new("deep dop dop deep")
    bb.rate = 100
    expect(bb.play).to eq(`say "deep dop dop deep"`)
  end

  it "can play sounds" do
    bb = BeatBox.new("deep dop dop deep")
    bb.rate = 100
    bb.voice = "Daniel"
    expect(bb.voice).to eq("Daniel")
  end

  it "can play sounds" do
    bb = BeatBox.new("deep dop dop deep")
    bb.rate = 100
    bb.voice = "Daniel"
    expect(bb.play).to eq(`say "deep dop dop deep"`)
  end

end