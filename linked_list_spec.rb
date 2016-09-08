require_relative 'linked_list'

describe LinkedList do

	before do
		@list = LinkedList.new
	end

	it 'has a size' do
		expect(@list.head).to eq nil
		expect(@list.size).to eq 0
	end

	it 'can have elements inserted at the front' do
		@list.insert_first('green')
		expect(@list.size).to eq 1
		expect(@list.head.element).to eq 'green'
		expect(@list.tail.element).to eq 'green'
		@list.insert_first('yellow')
		expect(@list.size).to eq 2
		expect(@list.head.element).to eq 'yellow'
		expect(@list.tail.element).to eq 'green'
		@list.insert_first('red')
		expect(@list.size).to eq 3
		expect(@list.head.element).to eq 'red'
		expect(@list.tail.element).to eq 'green'
	end

	it 'can have elements removed from the front' do
		@list.insert_first('green')
		@list.insert_first('yellow')
		@list.insert_first('red')
		@list.remove_first
		expect(@list.size).to eq 2
		expect(@list.head.element).to eq 'yellow'
		expect(@list.tail.element).to eq 'green'
		@list.remove_first
		expect(@list.size).to eq 1
		expect(@list.head.element).to eq 'green'
		expect(@list.tail.element).to eq 'green'
		@list.remove_first
		expect(@list.size).to eq 0
		expect(@list.head).to eq nil
		expect(@list.tail).to eq nil
	end

	it 'can have elements inserted at the back' do
		@list.insert_last('green')
		expect(@list.size).to eq 1
		expect(@list.head.element).to eq 'green'
		expect(@list.tail.element).to eq 'green'
		@list.insert_last('yellow')
		expect(@list.size).to eq 2
		expect(@list.head.element).to eq 'green'
		expect(@list.tail.element).to eq 'yellow'
		@list.insert_last('red')
		expect(@list.size).to eq 3
		expect(@list.head.element).to eq 'green'
		expect(@list.tail.element).to eq 'red'
	end

	it 'can have elements removed from the back' do
		@list.insert_last('green')
		@list.insert_last('yellow')
		@list.insert_last('red')
		@list.remove_last
		expect(@list.size).to eq 2
		expect(@list.head.element).to eq 'green'
		expect(@list.tail.element).to eq 'yellow'
		@list.remove_last
		expect(@list.size).to eq 1
		expect(@list.head.element).to eq 'green'
		expect(@list.tail.element).to eq 'green'
		@list.remove_last
		expect(@list.size).to eq 0
		expect(@list.head).to eq nil
		expect(@list.tail).to eq nil
	end

	

end
