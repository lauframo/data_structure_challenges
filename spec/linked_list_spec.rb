require_relative 'spec_helper'

describe LinkedList do
  let(:my_list) { LinkedList.new }
  let(:empty_list) { LinkedList.new }

  before do
    my_list.add("thing_1")
    my_list.add("thing_2")
    my_list.add("thing_3")
  end

  describe '#add' do
    it 'adds an element to the end of the list' do
      my_list.add("thing_4")
      expect(my_list.get(3)).to eq("thing_4")
    end

    it 'returns the element added' do
      expect(my_list.add("thing_4")).to eq("thing_4")
    end

    it 'grows indefinitely' do
      4.upto(15).each do |i|
        my_list.add("thing_#{i}")
      end
      expect(my_list.length).to eq(15)
    end
  end

  describe '#get' do
    it 'returns element at specified index' do
      expect(my_list.get(0)).to eq("thing_1")
      expect(my_list.get(1)).to eq("thing_2")
      expect(my_list.get(2)).to eq("thing_3")
    end

    it 'throws error if no element exists at specified index' do
      expect { my_list.get(3) }
        .to raise_error(NoSuchElementError)
    end
  end

  describe '#set' do
    it 'replaces element at the specified index' do
      my_list.set(1, "new_thing")
      expect(my_list.get(1)).to eq("new_thing")
    end

    it 'throws error if no element exists at specified index' do
      expect { my_list.set(3, "new_thing") }
        .to raise_error(NoSuchElementError)
    end
  end

  describe '#length' do
    it 'returns number of items in list' do
      expect(my_list.length).to eq(3)
      my_list.add("thing_4")
      expect(my_list.length).to eq(4)
    end
  end

  describe '#first' do
    it 'returns the first element' do
      expect(my_list.first).to eq("thing_1")
    end

    it 'throws an error if the list is empty' do
      expect { empty_list.first }
        .to raise_error(NoSuchElementError)
    end
  end

  describe '#last' do
    it 'returns the last element' do
      expect(my_list.last).to eq("thing_3")
    end

    it 'throws an error if the list is empty' do
      expect { empty_list.last }
        .to raise_error(NoSuchElementError)
    end
  end

  describe '#insert' do
    it 'adds element with specified value at the specified index' do
      my_list.insert(1, "new_thing")
      expect(my_list.get(0)).to eq("thing_1")
      expect(my_list.get(1)).to eq("new_thing")
      expect(my_list.get(2)).to eq("thing_2")
      expect(my_list.get(3)).to eq("thing_3")
    end

    it 'throws error if no element exists at specified index' do
      expect { my_list.insert(3, "new_thing") }
        .to raise_error(OutOfBoundsError)
    end
  end
end
