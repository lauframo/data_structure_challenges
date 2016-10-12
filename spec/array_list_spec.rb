require_relative '../array_list'

describe ArrayList do
  let(:array_list) { ArrayList.new }

  context "#length" do
    it "returns the number of elements in the array" do
      expect(array_list.length).to eq(0)
      array_list.set(0, "a")
      array_list.set(1, "b")
      expect(array_list.length).to eq(2)
    end
  end

  context "#set" do
    it "sets the value" do
      array_list.set(0, "hi")
      expect(array_list.get(0)).to eq("hi")
    end

    it "overwrites previous value" do
      array_list.set(0, "hi")
      array_list.set(0, "hello")
      expect(array_list.get(0)).to eq("hello")
      expect(array_list.length).to eq(1)
    end

    it "fails on an index < 0" do
      expect { array_list.set(-1, "hi") }
        .to raise_error(ArrayList::OutOfBoundsError)
    end
  end

  context "#insert" do
    it "inserts the value" do
      array_list.insert(0, "hi")
      expect(array_list.get(0)).to eq("hi")
    end

    it "shifts other values right" do
      array_list.insert(0, "hi")
      array_list.insert(0, "hello")
      expect(array_list.get(0)).to eq("hello")
      expect(array_list.get(1)).to eq("hi")
    end

    it "fails on an index < 0" do
      expect { array_list.insert(-1, "hi") }
        .to raise_error(ArrayList::OutOfBoundsError)
    end

    it "expands array for an index > size-1" do
      array_list.insert(5, "hi")
      expect(array_list.get(5)).to eq("hi")
      expect(array_list.get(0)).to eq(nil)
    end
  end

  context "#get" do
    it "gets the value" do
      array_list.insert(0, "hi")
      expect(array_list.get(0)).to eq("hi")
    end

    it "fails on an index < 0" do
      expect { array_list.get(-1) }
        .to raise_error(ArrayList::OutOfBoundsError)
    end

    it "fails on an index > length-1" do
      expect { array_list.get(length + 1) }
        .to raise_error(ArrayList::OutOfBoundsError)
    end
  end
end