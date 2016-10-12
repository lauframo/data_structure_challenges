require_relative '../linked_list'

describe LinkedList do
  let(:linked_list) { LinkedList.new }

  context "#length" do
    it "returns the number of elements in the array" do
      expect(linked_list.length).to eq(0)
      linked_list.insert("a")
      linked_list.insert("b")
      expect(linked_list.length).to eq(2)
    end
  end

  context "#set" do
    it "sets the value" do
      linked_list.set("hi", 0)
      expect(linked_list.get(0)).to eq("hi")
    end

    it "overwrites previous value" do
      linked_list.set("hi", 0)
      linked_list.set("hello", 0)
      expect(linked_list.get(0)).to eq("hello")
      expect(linked_list.length).to eq(1)
    end
  end

  context "#insert" do
    it "inserts the value" do
      linked_list.insert("hi")
      expect(linked_list.get(0)).to eq("hi")
    end

    it "shifts other values right" do
      linked_list.insert("hi")
      linked_list.insert("hello")
      expect(linked_list.get(0)).to eq("hello")
      expect(linked_list.get(1)).to eq("hi")
      expect(linked_list.length).to eq(2)
    end

    it "expands array for an index > size-1" do
      linked_list.insert("hi", 5)
      expect(linked_list.get(5)).to eq("hi")
      expect(linked_list.get(0)).to eq(nil)
      expect(linked_list.length).to eq(6)
    end
  end

  context "#get" do
    it "gets the value" do
      linked_list.insert("hi")
      expect(linked_list.get(0)).to eq("hi")
    end

    it "returns nil on an index > length-1" do
      expect(linked_list.get(linked_list.length)).to be nil
    end
  end
end