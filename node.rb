class Node

	attr_accessor :element, :other_node

	def initialize(element)
		@element = element
	end

	def insert_after(other_node)
		if other_node.class == Node
			@other_node = other_node
		end
	end

	def remove_after
		@other_node = nil
	end

end
