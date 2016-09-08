require_relative 'node'

describe Node do

	before do
		@node1 = Node.new('first')
		@node2 = Node.new('second')
		@node1.insert_after(@node2)
	end

	it 'has an element' do
		expect(@node1.element).to eq 'first'
	end

	it 'can be inserted after another node' do
		expect(@node1.other_node).to eq @node2
	end

	it 'can have its pointer cleared' do
		@node1.remove_after
		expect(@node1.other_node).to eq nil
	end

end
