# Make two classes Linked List and Node.

class Linked_List
        attr_accessor :list


	def initialize
		@list = []
	end	

	def append node
		@list.push node
	end

	def prepend node
		@list.unshift node
	end

	def size
		@list.length
	end

	def head
		@list[0]
	end

	def tail
		@list[-1]
	end

	def at(index)
		@list[index]
	end

	def pop
		@list.pop
	end

	def contains?(item)
		@list.include?(item)
	end

	def find(data)
		@list.index(data)
	end

	def to_s
		puts_statement = ''
		@list.each do |node|
			puts_statement += "(#{node.value}) -> "
		end
		puts_statement += "(nil)"
		return puts_statement
	end
        # start of node class

end

class Node
	attr_accessor :value, :next
		
	def initialize(data=nil)
		@value = data
		@next = nil
	end
end
