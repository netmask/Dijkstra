require 'spec_helper'

describe Dijkstra::PathFinder do
  describe "#short_distance" do
    subject{ PathFinder.new create_graph }

    let(:result){ subject.short_distance('E', 'B') }

    it{expect(result).to be_kind_of Array}
    it{expect(result).to be_eql ['A','E', 'D', 'C','B']}
  end
end
