require 'spec_helper'

describe Dijkstra::PathFinder do
  describe "#short_distance" do
    subject{ PathFinder.new create_graph }

    let(:result){ subject.short_distance('A', 'B') }

    it{expect(result).to be_kind_of Array}
    it{expect(result).to include ['E', 'D', 'C']}
  end

end
