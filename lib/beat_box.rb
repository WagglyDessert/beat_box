class BeatBox
  attr_reader :list
    def initialize
    @list = LinkedList.new
    end
  # append method in BeatBox class acts differently (splitting the string) before passing it down to the LinkedList
  def append(value)
    value_array = value.split(" ")
    value_array.each do |value|
      @list.append(value)
    end
  end

  #count nodes in list
  def count
    @list.count
  end

  #generate the string content of the beat and use it as input to the 'say' command
  def play
    beats = @list.to_string
    `say -r 500 -v Boing #{beats}`
  end
end