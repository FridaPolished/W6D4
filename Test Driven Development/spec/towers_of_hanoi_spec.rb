require "rspec"
require "towers_of_hanoi"

describe TowersOfHanoi do
    subject(:towers) {TowersOfHanoi.new}

    describe "#initialize" do
        it "creates a 2d array for the 3 towers" do
            expect(towers.towers).to be_a(Array)
        end
    end

    describe "#move" do
        it "moves a piece from start tower to end tower" do
            towers.move(0, 1)
            expect(towers.towers[0]).not_to include(1)
            expect(towers.towers[1]).to include(1)
        end

        it "raises an error if it can't move the piece" do
            towers.move(0, 1)
            expect{towers.move(0,1)}.to raise_error("Can't move bigger piece onto smaller piece")
        end

    end

    describe "#won?" do
        it "returns true if all pieces are on one other tower" do
            towers.towers[0], towers.towers[1] = towers.towers[1], towers.towers[0]
            expect(towers.won?).to be true
        end

        it "returns false otherwise" do
            expect(towers.won?).to be false
        end
    end
end