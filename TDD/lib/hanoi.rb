
class TowersofHanoi
  attr_reader :towers

  def initialize
    @towers = [[1,2,3], [], []]
  end


  def input_move
    begin
      puts "Starting tower? (0-2)"
        input1 = gets.chomp.to_i
      raise InvalidInput.new if input1 > 2
      rescue 
      puts "Destination tower? (0-2)"
        input2 = gets.chomp.to_i
      rescue InvalidInput.new if input1 > 2
    return [input1, input2]
  end


  def valid_move?(move)
    return true if @board[move[1]].empty?
    target_disc = @board[move[0]].first
    target_tower_disc = @board[move[1]].first
    return false if target_disc > target_tower_disc
  end


  def make_move(move)
    disc = @board[move[0]].shift #=> 1
    @board[move[1]].unshift(disc) if valid_move?(move)
  end


  def play
    until won?
      input_move
    end
    puts "Game over"
  end


  def won?
    @tower[0].empty? && (@tower[1].empty? || @tower[2].empty?)
  end

end

class InvalidInput < RangeError
  def message
    "Pick a number within range"
  end
end
