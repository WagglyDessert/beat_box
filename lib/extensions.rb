class BeatBox
  attr_reader :list
    def initialize (list)
    @list = LinkedList.new
    end
  # append method in BeatBox class acts differently (splitting the string) before passing it down to the LinkedList
  def append(value)
    value_array = value.split(" ")
    value_array.each do |value|
      approved_sounds_string = [("tee dee deep bop boop la na doo ditt soo hoo shu shi blop plop dop oom")]
    if approved_sounds_string.include?(value)
      @list.append(value)
    end
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

  def all
    @list.to_string
  end

  # Add validation to your program such that the input beats must be members of your defined list. 
  # Insertion of a beat not in the list is rejected.
  # def append(value)
  #   approved_sounds_string = ("tee dee deep bop boop la na doo ditt soo hoo shu shi blop plop dop oom")
  #   if
  #     approved_sounds_string.include?(value)
  #     @list.append(value)
  #   else
  #     @list.to_string
  #   end
  # end

end