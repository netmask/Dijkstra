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
      @current_path << node
      puts "#{@current_path} >>>>>>>>>>>>"
      self.graph[node].vertices.each do |k, v|
        node_walk(k, 1)
#        node_walk k, end_node unless @current_path.include? k || k == end_node
      end
    end
  end
end
