module Dijkstra
  class PathFinder
    attr_accessor :graph, :paths, :current_path,  :prev_cost

    def initialize(graph)
      self.graph = graph
      self.paths = []
      self.current_path = []
      self.prev_cost = 0
    end

    def short_distance(start_node, end_node)
      node_walk start_node, end_node
    end

    def node_walk(node, end_node)
      current_node = self.graph[node]

      unless current_node.visited
        @current_path << node[0]
        visitables = current_node.vertices.select{|v|
          !self.graph[v[0]].visited
        }

        next_node = visitables.sort_by{|v| v[1] }[0][0]
        current_node.visited = true

        if @current_path[-1] == end_node
          return @current_path
        else
          node_walk next_node, end_node
        end
      end
    end
  end
end
