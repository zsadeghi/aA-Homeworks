class Octopus
    attr_reader :fish_array

    def initialize(fish_array)
        @fish_array = fish_array
    end

    def find_longest
        longest = _find_longest(@fish_array)
        _print_fish(longest)
    end

    protected

    def _find_longest(fish_array)
        raise "not implemented"
    end

    private

    def _print_fish(fish)
        puts "found a fish: " + fish
    end
end

class SluggishOctopus < Octopus

    def initialize(fish_array)
        super(fish_array)
    end

    def _find_longest(fish_array)
        longest = ""
        fish_array.each do |ele1|
            fish_array.each do |ele2|
                if ele1.length > ele2.length
                    longest = ele1
                end
            end
        end
        longest
    end

end

class SmartOctopus < SluggishOctopus
    # def initialize(value)
    #     # super()
    #     hash = Hash.new()
    # end

    def secret
        @fish_array
    end
end

f = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# o = SluggishOctopus.new(f)
# o._find_longest(f)
# o.find_longest
# p o.fish_array
fluffy = SmartOctopus.new(12)
p fluffy.secret
