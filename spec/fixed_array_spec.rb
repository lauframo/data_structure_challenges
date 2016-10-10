require_relative '../fixed_array'

describe FixedArray do
  let(:max_size) { 32 }
  let(:fixed_arr) { FixedArray.new(max_size) }

  context "#size" do
    it "returns the allocated size of the array" do
      expect(fixed_arr.size).to eq(max_size)
    end
  end

  context "#set" do
    it "sets the value" do
      fixed_arr.set(0, "hi")
      expect(fixed_arr.get(0)).to eq("hi")
    end

    it "fails on an index < 0" do
      expect { fixed_arr.set(-1, "hi") }
        .to raise_error(FixedArray::OutOfBoundsError)
    end

    it "fails on an index > size-1" do
      expect { fixed_arr.set(max_size + 1, "hi") }
        .to raise_error(FixedArray::OutOfBoundsError)
    end
  end

  context "#get" do
    it "gets the value" do
      fixed_arr.set(0, "hi")
      expect(fixed_arr.get(0)).to eq("hi")
    end

    it "fails on an index < 0" do
      expect { fixed_arr.get(-1) }
        .to raise_error(FixedArray::OutOfBoundsError)
    end

    it "fails on an index > size-1" do
      expect { fixed_arr.get(max_size + 1) }
        .to raise_error(FixedArray::OutOfBoundsError)
    end
  end
end