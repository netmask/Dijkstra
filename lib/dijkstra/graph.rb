module Dijkstra

  class Vertex
    attr_accessor :node, :cost
  end

  class Node
    attr_accessor :id, :vertices, :visited, :value

    def initialize(id, vertices)
      self.id = id
      self.vertices = vertices
      self.visited = false
      self.value = INFINITY
    end

  end

  class Graph
    attr_accessor :sorted_nodes

    def add_node(node)
      (self.sorted_nodes ||= {})[node.id] = node
    end

    def [](id)
      self.sorted_nodes[id]
    end

    def nodes
      self.sorted_nodes.values
    end

    def visitable_nodes
      nodes.select{|n| !n.visited }
    end

    def visited_nodes
      nodes.select{|n| n.visited }
    end
  end

end
