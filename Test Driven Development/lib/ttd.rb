class Array


    def my_uniq
        results = []

        self.each do |ele|
            results << ele unless results.include?(ele)
        end
        results
    end

    def two_sum
        pairs = []

        (0...self.length-1).each do |index1|
            (index1+1...self.length).each do |index2|
                pairs << [index1, index2] if self[index1] + self[index2] == 0
            end 
        end
        pairs
    end
    
    def my_transpose
        col = Array.new(self.length) { Array.new }
        
        (0...self.length).each do |idx1|
            (0...self.length).each do |idx2|
                col[idx1] << self[idx2][idx1]
            end
        end
        col
    end
    
    def stock_picker
        max_profit = 0
        days = []

        (0...self.length-1).each do |index1|
            (index1+1...self.length).each do |index2|
                if self[index2] - self[index1] > max_profit
                    days = [index1, index2]
                    max_profit = self[index2] - self[index1]
                end
            end 
        end
        days
    end
    


end