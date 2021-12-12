class RockPaperScissors
  def play(actions)
    actions = actions.gsub("\n", " ").gsub("vs", " ").split(" ")
    jog_a = 0
    jog_b = 0
    draw = 0
    actions.each_with_index do |element, index|
      if index.even?
        if actions[index] == "pedra" && actions[index + 1] == "tesoura"
          jog_a += 1
        elsif actions[index] == "pedra" && actions[index + 1] == "papel"
          jog_b += 1
        elsif actions[index] == "papel" && actions[index + 1] == "tesoura"
          jog_b += 1
        elsif actions[index] == "papel" && actions[index + 1] == "pedra"
          jog_a += 1
        elsif actions[index] == "tesoura" && actions[index + 1] == "papel"
          jog_a += 1
        elsif actions[index] == "tesoura" && actions[index + 1] == "pedra"
          jog_b += 1
        elsif actions[index] == actions[index + 1]
          draw += 1
        end
      end
    end

    if jog_b == 0
      "Jogador A: #{jog_a}"
    elsif jog_a == 0
      "Jogador B: #{jog_b}"
    elsif draw == 0
      "Jogador A: #{jog_a} | Jogador B: #{jog_b}"
    else
      "Empates: #{draw} | Jogador A: #{jog_a} | Jogador B: #{jog_b}"
    end
  end
end
