class Node
  attr_accessor :value, :previous
  
  def initialize(value)
    @value = value
    @previous = nil
  end


  def previous?
    !!@previous
  end
end

class Stack
  def initialize
    @length = 0
    @head = nil
  end

  def head?
    !!@head
  end

  def push(item)
    node = Node.new(item)
    @length += 1
    if !head?
      @head = node
    else
      node.previous = @head
      @head = node
    end
  end

  def pop
    if @length == 0
      nil
      # head = @head
      # @head = nil
      # if head?
      #   head.value
      # else
      #   nil
      # end
    else
      @length -= 1
      head = @head
      if @head.previous? #se n tiver previous significa q ele eh o ultimo da stac
        @head = @head.previous
      else
        @head = nil
      end
      head.value
    end

  end

  def peek
    if @head.previous?
      @head.value
    end
  end
end



example = Stack.new()
example.push('first to enter')
example.push('second to enter')
example.push('third to enter')
p example.pop
p example.pop
p example.pop
p example.pop
p example