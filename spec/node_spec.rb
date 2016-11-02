require_relative 'spec_helper'

describe Node do
  let(:node_1) { Node.new("hello") }
  let(:node_2) { Node.new("world") }

  describe "#element" do
    it "returns the nodes value" do
      expect(node_1.element).to eq("hello")
    end
  end

  describe "#next" do
    it "can assign a 'next' node" do
      node_1.next = node_2
      expect(node_1.next).to eq(node_2)
    end

    it "returns nil if there is no next node" do
      expect(node_1.next).to be(nil)
    end
  end
end
