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

  #prepend adds node to the beginning of the list
  def prepend(value)
    if @head == nil
      @head = Node.new(value)
    else
    current_node = Node.new(value)
    current_node.next_node = @head
    @head = current_node
    end
  end

  #insert method adds one or more elements at a given position in the list
  def insert(index, value)
    insert_node = Node.new(value)
    if index == 0
    prepend(insert_node)
    else
    current_node = @head
    current_index = 0
      until current_index == (index - 1)
      current_node = current_node.next_node
      current_index += 1
      end
    insert_node.next_node = current_node.next_node
    current_node.next_node = insert_node
    end
  end

  # find method takes two parameters, first indicates first position to return and the second specifies how many elements to return
  def find(index, element)
    current_node = @head
    current_index = 0
    until current_index == (index)
      current_node = current_node.next_node
      current_index += 1
      end
    element_list = []
    element.times do
      element_list << current_node.data
      current_node = current_node.next_node
    end
    element_list.join(" ")
  end

  #pop method removes last element from list and returns it
  # #pop: remove the last node and return it
 def pop
    if @head == nil
        return "This list is currently empty"
    else
        current_node = @head
        previous_node = nil
        while current_node.next_node != nil
            previous_node = current_node
            current_node = current_node.next_node
        end
        last_node = current_node
    end
    previous_node.next_node = nil
    last_node.data
 end

  # includes? method gives back true or false whether the supplied value is in the list
  def includes?(value)
    list_array = to_string
    list_array.include?(value)
  end

end