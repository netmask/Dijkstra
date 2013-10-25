module Dijkstra
  class Vertex
    attr_accessor :node, :cost

    def initialize(edge_name, cost)
      @node = edge_name
      @cost = cost
    end
  end

  class Node
    attr_accessor :id, :vertices

    def initialize(id, vertices)
      self.id = id
      self.vertices = vertices
    end
  end

  class Graph
    attr_accessor :nodes

    def add_node(node)
      (self.nodes ||= []) << node
    end
  end

end
