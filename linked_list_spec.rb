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

	describe 'extended functionality' do

		it 'sets a new head to have an index of 0' do
			@list.insert_first('a')
			expect(@list.head.index).to eq 0
			@list.insert_first('b')
			expect(@list.head.index).to eq 0
		end

		it 'increments the indices of all other downstream elements when new head is added' do
			@list.insert_first('a')
			@list.insert_first('b')
			expect(@list.head.index).to eq 0
			expect(@list.tail.index).to eq 1
			@list.insert_first('c')
			expect(@list.tail.index).to eq 2
		end

		# it ''

	end

end
