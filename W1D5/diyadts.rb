require 'byebug'
# EXERCISE 1 - STACK (LIFO)

class Stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack
  end

end

# Tests
stack = Stack.new
stack.add(4)
stack.add(5)
stack.add(10)
p stack.show
stack.remove
stack.remove
p stack.show


# EXERCISE 2 - QUEUE (FIFO)

class Queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue
  end

end

# Tests
queue = Queue.new
queue.enqueue(4)
queue.enqueue(5)
queue.enqueue(10)
p queue.show
queue.dequeue
queue.dequeue
p queue.show

# EXERCISE 3 - MAP (Array Implementation)

class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    # byebug if key == 10
    @map.each_with_index do |pair, index|
      if pair.first == key
        @map[index] = [key, value]
      end
    end
    @map << [key, value] unless @map.include?([key, value])
  end

  def lookup(key)
    @map.each do |pair|
      return pair[1] if pair[0] == key
    end
    nil
  end

  def remove(key)
    @map.each_with_index do |pair, index|
      if pair.first == key
        @map.delete_at(index)
      end
    end
  end

  def show
    @map
  end

end

# Tests
map = Map.new
map.assign(4, "I")
map.assign(5, "LOVE")
map.assign(10, "YOU")
p map.show
map.assign(10, "Richard")
p map.show
p map.lookup(10)
map.remove(4)
map.remove(10)
p map.show
