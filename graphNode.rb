
class GraphNode

    attr_accessor :value, :neighbors
    
    def initialize(value)
        @value = value
        @neighbors = []
    end
 
end

def bfs(starting_node, target_value)
    visited = Array.new
    to_visit = Array.new
    to_visit << starting_node
    until to_visit.empty?
        first = to_visit.first
        to_visit = to_visit[1..-1]
        if first.value == target_value
            return first
        end

        visited << first.value

        first.neighbors.each do |neighbor|
            if !visited.include?(neighbor.value)
                to_visit << neighbor
            end
        end
    end
    nil
end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]
p bfs(a, 'b')
p bfs(a, 'f')