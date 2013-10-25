require 'spec_helper'

describe Dijkstra::Graph do
  Dijkstra

  let(:vertices) do
    [
     Vertex.new('C', 14),
     Vertex.new('D', 9),
     Vertex.new('E', 7)
    ]
  end

  let(:node) do
    Node.new('A', vertices)
  end

  before do
    subject.add_node node
  end

  it{ expect(subject.nodes.length).to be 1}
  it{ expect(node.vertices.length).to be 3}
end
