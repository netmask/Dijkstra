module Dijkstra
  class Node
    attr_accessor :id, :vertices, :visited

    def initialize(id, vertices)
      self.id = id
      self.vertices = vertices
      self.visited = false
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
