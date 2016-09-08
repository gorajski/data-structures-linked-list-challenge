require_relative 'node'

class LinkedList

	attr_reader :size, :head, :tail

	def initialize
		@size = 0
		@head = nil
		@tail = nil
	end

	def insert_first(element)
		new_head = Node.new(element)

		if @head != nil
			new_head.insert_after(@head)	
		else
			@tail = new_head
		end

		@head = new_head
		@size += 1
	end

	def remove_first
		if @head != nil
			@head = @head.other_node
			@tail = nil if @size == 1
			@size -= 1
		else
			return @size
		end
	end

	def insert_last(element)
		new_tail = Node.new(element)

		if @tail != nil
			@tail.insert_after(new_tail)
		else
			@head = new_tail
		end

		@tail = new_tail
		@size += 1
	end

	def remove_last
		if @head == @tail
			@head = nil
			@tail = nil
			return @size = 0
		end
		if @tail != nil
			position = @head
			loop do
				puts position
				if position.other_node == @tail
					position.remove_after
					@tail = position
					@size -= 1
					return @size				
				end
				position = position.other_node
			end
		else
			return @size
		end

	end

end
