class TowersOfHanoi
    attr_reader :towers

    def initialize
        @towers = Array.new(3) { Array.new }
        towers[0] = [3, 2, 1]

    end

    def move(start_tower, end_tower)
        piece = towers[start_tower].last
        unless towers[end_tower].empty? || piece < towers[end_tower].last
            raise "Can't move bigger piece onto smaller piece"
        end
        
        piece = towers[start_tower].pop
       
        towers[end_tower] << piece
    end

    def render
        
        (0..2).each do |row|
            (0..2).each do |col|
                if towers[row][col].nil?
                    print "|"
                else
                    print towers[row][col]
                end
            end
            print "\n"
        end
    end

    def play
        until won?
            render
            puts "What tower would you like to move from?"
            start_tower = gets.chomp.to_i
            puts "What tower would you like to move to?"
            end_tower = gets.chomp.to_i
            move(start_tower, end_tower)
        end
    end

    def won?
        towers[0].empty? && (towers[1].empty? || towers[2].empty?)
    end

end

if __FILE__ == $PROGRAM_NAME
    towers = TowersOfHanoi.new
    towers.play
end