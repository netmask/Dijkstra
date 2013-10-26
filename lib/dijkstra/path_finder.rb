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
      paths.sort.first[0]
    end

    def node_walk(node, end_node, cost = 0)
      current_node = self.graph[node]

      unless current_node.visited
        @current_path << node[0]

        visitables = current_node.vertices.select{|v|
          !self.graph[v[0]].visited
        }

        current_node.visited = true

        if @current_path[-1] == end_node
          paths <<  [@current_path, cost]
        else
          next_one = visitables.sort_by do |v|
            cost  + v[1]
          end

          node_walk next_one[0][0], end_node, next_one[0][1]
        end

      end
    end

  end
end
