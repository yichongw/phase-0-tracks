class TodoList

def initialize(list)
	@list = list
end

def get_items
	p @list
end

def add_item(item)
	@list << item
	p list
end

end
