class BeatBox
  attr_reader :list
  attr_accessor :rate, :voice
    def initialize (data)
    @list = LinkedList.new
    append(data) #instantiates the first object as a head node
    @rate = 500
    @voice = "Boing"
  end


  # append method in BeatBox class acts differently (splitting the string) before passing it down to the LinkedList
  # Add validation to your program such that the input beats must be members of your defined list. 
  # Insertion of a beat not in the list is rejected.
  def append(value)
    value_array = value.split(" ")
    approved_sounds_array = %w(tee dee deep bop boop la na doo ditt soo hoo shu shi blop plop dop oom)
    value_array.each do |value|
      if approved_sounds_array.include?(value)
        @list.append(value)
      else
        @list
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
    `say -r #{@rate.to_s} -v #{@voice.to_s} #{beats}`
  end

  def all
    @list.to_string
  end

  def prepend(value)
    value_array = value.split(" ")
    approved_sounds_array = %w(tee dee deep bop boop la na doo ditt soo hoo shu shi blop plop dop oom)
    value_array.each do |value|
      if approved_sounds_array.include?(value)
        @list.prepend(value)
      else
        @list
      end
    end
  end

  # def rate(value)
  #   @r = value
  # end

  # def voice(value)
  #   @v = value
  # end
  
end

#require 'pry';binding pry