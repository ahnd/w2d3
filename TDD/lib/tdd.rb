class Array
  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end
    result
  end


  def two_sum
    result = []
    self.each_with_index do |el1, idx1|
      self.each_with_index do |el2, idx2|
        result << [idx1, idx2] if el1 + el2 == 0 unless el1 == el2
      end
    end
    result.map! do |arr|
      arr.sort
    end
    result.my_uniq
  end

  def my_transpose
    result = Array.new(self.length){[]}
    i = 0
    while i < self.length
      j = 0
      while j < self.length
        result[i][j] = self[j][i]
        j += 1
      end
      i += 1
    end
    result
  end

#[10, 15, 20, 13, 50, 6] => [4, 5]
#[2, 3, 50, 1, 50, 4, 50]
  def stock_picker
    pairs = self.combination(2).select {|x, y| x < y && (self.index(x) < self.rindex(y))}
    ordered_pairs = pairs.sort_by {|arr| arr[1] - arr[0]}
    best = ordered_pairs[-1]
    [self.index(best[0]), self.rindex(best[1])]
  end
end
