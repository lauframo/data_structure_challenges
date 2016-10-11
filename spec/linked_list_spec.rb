require_relative '../linked_list'

describe LinkedList do
  let(:linked_list) { LinkedList.new }

  context "#length" do
    it "returns the number of elements in the array" do
      expect(linked_list.length).to eq(0)
      linked_list.set(0, "a")
      linked_list.set(1, "b")
      expect(linked_list.length).to eq(2)
    end
  end

  context "#set" do
    it "sets the value" do
      linked_list.set(0, "hi")
      expect(linked_list.get(0)).to eq("hi")
    end

    it "fails on an index < 0" do
      expect { linked_list.set(-1, "hi") }
        .to raise_error(LinkedList::OutOfBoundsError)
    end

    it "expands array for an index > size-1" do
      linked_list.set(5, "hi")
      expect(linked_list.get(5)).to eq("hi")
      expect(linked_list.get(0)).to eq(nil)
    end
  end

  context "#get" do
    it "gets the value" do
      linked_list.set(0, "hi")
      expect(linked_list.get(0)).to eq("hi")
    end

    it "fails on an index < 0" do
      expect { linked_list.get(-1) }
        .to raise_error(LinkedList::OutOfBoundsError)
    end

    it "fails on an index > length-1" do
      expect { linked_list.get(length + 1) }
        .to raise_error(LinkedList::OutOfBoundsError)
    end
  end
end