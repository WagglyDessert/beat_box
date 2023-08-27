class Node
  attr_reader :data
  attr_accessor :next_node
  def initialize(data)
    @data = data
    @next_node = nil
  end
end

class LinkedList
  attr_reader :head
    def initialize
    @head = nil
    end

    
  #add method append - adds a new piece of data (data can really be anything) to the list
  def append(value)
    if @head == nil
      @head = Node.new(value)
     else
       current_node = @head
       until
         current_node.next_node == nil
         current_node = current_node.next_node
       end
       current_node.next_node = Node.new(value)
    end
  end

  #add method count - tells us how many things are in the list
  #use counter, go through collection of nodes
  # count UNTIL end node is nil
  def count
    if @head == nil
      0
    else
      current_node = @head
      i = 1
      until
        current_node.next_node == nil
        i += 1
        current_node = current_node.next_node
      end
      i
    end
  end

  #add method to_string -generates a string of all the elements in the list, separated by spaces
  def to_string
    if @head == nil
      nil
    else
    current_node = @head
    string_value = []
    string_value << current_node.data.to_s
      until 
      current_node.next_node == nil
      current_node = current_node.next_node
      string_value << current_node.data.to_s
      end
    string_value.join(" ")
    #@head.data.to_s  + (" ") + current_node.next_node.data.to_s 
    end
  end

end