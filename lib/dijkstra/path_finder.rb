module Dijkstra
  class PathFinder
    attr_accessor :graph

    def initialize(graph)
      self.graph = graph
    end

    def short_distance(start_node_prefix, end_node_prefix)
      ordered_nodes = []

      start_node = self.graph[start_node_prefix]
      end_node = self.graph[end_node_prefix]

      ordered_nodes << start_node.id
      start_node.value = 0
      start_node.visited = true

      until start_node.id == end_node_prefix do
        start_node = mark_min_related(start_node)
        ordered_nodes << start_node.id
      end

      ordered_nodes
    end

    def mark_min_related(start_node)
      concrete_nodes = []

      start_node.vertices.each do |k, v|
        node = self.graph[k]

        if(!node.visited)
          if node.value == INFINITY
            node.value = start_node.value + v
          else
            node.value = v if v < node.value
          end

          concrete_nodes << node
        end

      end

      visited = concrete_nodes.sort_by{|v| v.value }.first

      visited.visited = true
      visited
    end

  end
end
