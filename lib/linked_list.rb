require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def prepend(node)
    if @head.nil?
      @head = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def append(node)
    if @head.nil?
      @head = node
    else
      last_node = @head
      last_node = last_node.next_node while last_node.next_node
      last_node.next_node = node
    end
  end

  def delete_head
    if @head.nil?
      nil
    elsif @head.next_node.nil?
      @head = nil
    else
      @head = @head.next_node
    end
  end

  def delete_tail
    if @head.nil?
      nil
    elsif @head.next_node.nil?
      @head = nil
    else
      current = @head
      current = current.next_node while current.next_node.next_node
      current.next_node = nil
    end
  end

  def add_after(index, node)
    counter = 0
    current_node = @head
    while current_node.next_node
      current_node = current_node.next_node
      counter += 1
      break if counter == index
    end

    node.next_node = current_node.next_node
    current_node.next_node = node
  end

  def search(value)
    return @head if @head.data = value

    while current.next_node
      current = current.next_node
      return current if current.data = value
    end
  end
end
