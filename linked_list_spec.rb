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
		@list.insert_first('first')
		head = @list.head
		expect(@list.head.class).to eq Node
		expect(@list.size).to eq 1
		@list.insert_first('second')
		p head.element
		expect(@list.head).not_to eq head
		expect(@list.size).to eq 2
		@list.insert_first('third')
		p head.element
		expect(@list.size).to eq 3
		p @list
	end

	it 'can have elements removed from the front' do
		@list.insert_first('front')
		@list.remove_first
		expect(@list.size).to eq 0
	end

end
