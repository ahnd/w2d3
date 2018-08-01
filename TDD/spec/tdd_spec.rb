require 'rspec'
require 'tdd'


describe 'Array#my_uniq' do
  subject(:array) {[1, 2, 3, 2, 1, 3, 4]}
   it 'doesnt modify the original array' do
     array.my_uniq
     expect(array).to eq([1, 2, 3, 2, 1, 3, 4])
   end

   it "shouldn't give repeating elements" do
     expect(array.my_uniq).to eq(array.uniq)
   end

   it 'should return an array' do
     expect(array.my_uniq.class).to eq(Array)
   end

   it 'does not call the uniq method' do
      expect(array).not_to receive(:uniq)
      array.my_uniq
    end
end

describe "Array#two_sum" do
  subject(:array) {[1, 2, 5, -1, -3, -2, -1, 0]}

   it "returns an empty array if no matches are found" do
     expect([1, 2, 3, 4].two_sum).to eq([])
   end

    it "should return an array of elements of length 2" do
      expect(array.two_sum.all?{|x| x.length == 2}).to eq true
    end

    it 'should return a sorted array (dictionary-wise)' do
      expect(array.two_sum).to eq(array.two_sum.sort)
    end

    it 'should return all pairs that sum to 0' do
      expect(array.two_sum).to include([0, 3], [0, 6], [1, 5])
    end
end

describe "Array#my_transpose" do
  let(:array) {[[0, 1, 2], [3, 4, 5], [6, 7, 8]]}

  it "shouldn't call the transpose method" do
    expect(array).not_to receive(:transpose)
    array.my_transpose
  end


  it 'transposes the array' do
    expect(array.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end
end

describe "Array#stock_picker" do
  let(:array) {[100, 2, 3, 50, 1, 50, 5, 50]}

  it "should return the best pair in which buy date is before sell date" do
    expect(array.stock_picker).to eq([4,7])
  end

  context "best pair is not in order(sell date is before buy date)"
    it 'should return a sorted array' do
      expect(array.stock_picker).to eq(array.stock_picker.sort)
    end

end
