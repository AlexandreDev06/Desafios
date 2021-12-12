class JogoDaVelha
  def play(actions)
    game = {
      "X" => 0,
      "O" => 0,
    }
    x_win = 0
    o_win = 0
    actions.split("\n").each do |jogada|
      jog = jogada.chars
      game[jog[0]] += jog[3].to_i + jog[5].to_i
    end
    game
  end
end
