module Dijkstra
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
      (self.nodes ||= {})[node.id] = node
    end

    def [](id)
      self.nodes[id]
    end
  end

end
