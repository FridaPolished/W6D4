require "rspec"
require "ttd"

describe Array do

    describe "#my_uniq" do
        it "removes dupicates from an array" do
            array = [1, 2, 1, 3, 3]
            expect(array.my_uniq).to eq([1, 2, 3])
        end

        it "returns unique elements in original order" do
            array = [1, 2, 1, 3, 3]
            shuffled = [3, 1, 2, 1, 3]
            expect(array.my_uniq).not_to eq(shuffled.my_uniq)
        end
    end

    describe "#two_sum" do
        it "finds all pairs of positions where the elements sum to zero" do
            array = [-1, 0, 2, -2, 1]
            expected = [[0, 4], [4, 0], [2, 3], [3, 2]]
            results = array.two_sum.reject{|el| expected.include?(el)}
            expect(results).to be_empty 
        end
        
        it "returns pairs in dictionary wise ordering" do
            array = [-1, 0, 2, -2, 1]
            expect(array.two_sum).to eq([[0, 4], [2, 3]])
        end
    end


    describe "#my_transpose" do
        it "switches the row and columns" do
            array = [[0, 1, 2],
                     [3, 4, 5],
                     [6, 7, 8]]
            expect(array.my_transpose).to eq(array.transpose)
        end
    end


    describe "#stock_picker" do 

        it "picks the most profitable pair of days" do 
            stocks = [1, 2, 3, 4]
            expect(stocks.stock_picker).to eq([0, 3])
        end

        it "picks the results in chronological order" do 
            stocks = [8, 5, 2, 3]
            expect(stocks.stock_picker).to eq([2, 3])
        end

    end
end