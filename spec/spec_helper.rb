require 'dijkstra'

include Dijkstra

def create_graph
  @full_graph = Graph.new

  matrix = [['A', {'C' => 14, 'D' => 9, 'E' => 7} ],
            ['B', {'C' => 9,  'F' => 6}],
            ['C', {'A' => 14, 'D' => 2, 'B' => 9}],
            ['D', {'A' => 14, 'C' => 2, 'E' => 10, 'F' => 11}],
            ['E', {'A' => 7, 'D' => 10, 'F' => 15}],
            ['F', {'D' => 11, 'E' => 15}]]


  matrix.each do |n|
    @full_graph.add_node Node.new(*n)
  end

  @full_graph
end
