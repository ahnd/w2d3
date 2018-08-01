require 'rspec'
require 'hanoi'

describe TowersofHanoi do
  describe "#initialize" do
    subject(:game)  {TowersofHanoi.new}
    it 'should initialize with three towers' do
      expect(game.towers).to eq([[1,2, 3], [], []])
    end
  end


  # describe "#input_move" do
  #
  # end


  describe "#valid_move?" do
    it 'should return a boolean' do
      expect(self.valid_move?)
    end
  end


  describe "#make_move" do

  end


  describe "#play" do

  end


  describe "#won?" do

  end

end
