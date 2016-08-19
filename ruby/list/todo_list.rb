class TodoList
	attr_accessor :list

def get_items
	return @list
end

def initialize(ary)
	@list = ary
end

def add_item(str)
	@list << str
	return @list
end

def delete_item(str)
	@list.each do |item|
		if item == str
			@list.delete(str)
		end
	end

end

def get_item(index)
	return @list[index]
end

end
