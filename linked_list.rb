class Node
  attr_accessor :value, :next
  def initialize(value)
    @value = value
    @next = nil
  end
end



class LinkedList
  def initialize
    @head = nil
    @tail = nil
    @length = 0
  end

  def head?
    !!@head
  end

  def enqueue(item)
    node = Node.new(item)
    if @length == 0
      @tail = node
      @head = node
      @length+=1
    else
      @tail.next = node
      @tail = node
    end
  
  end

  def deque
    if !head?
      nil
    else
      @length-=1
      head = @head
      @head = @head.next
      head.value
    end


  end

  def peek
    if head?
      @head.value
    end
  end

end

ll = LinkedList.new
ll.enqueue('first item to join')
ll.enqueue('second item to join')
p ll
ll.enqueue('thir item to join')
p ll.deque

p ll