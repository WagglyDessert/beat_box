class LinkedList
  attr_reader :head
    def initialize
    @head = nil
    end

  #add method append - adds a new piece of data (data can really be anything) to the list
  def append(value)
    if @head == nil
      @head = Node.new(value,nil)
     else
       @head.next_node =  Node.new(value,nil)
    end
  end

  #add method count - tells us how many things are in the list
  #use counter, go through collection of nodes
  # count UNTIL end node is nil
  def count
    i = 0
    if @head != nil
      i += 1
    else
      i += 0
    end
    i
    end

  #add method to_string -generates a string of all the elements in the list, separated by spaces
  def to_string
    @head.data.to_s
    #def to_string
    #datum = []
   # if @head.next_node == nil
   #   @head.data.to_s
   # else
   #   until @next_node == nil
   #     datum << @data
   # end
   # return datum.to_s
  end
  
end