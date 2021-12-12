class ElementSwap
  def switch(letters, instructions)
    aux_valor = 0
    ordem = instructions.split("").reject { |x| x == "<" || x == ">" || x == "\n" }.map(&:to_i)
    ordem.each_with_index do |element, index|
      if index.even?
        aux_valor2 = ordem[index + 1]
        aux_valor = letters[element]
        letters[element] = letters[aux_valor2]
        letters[aux_valor2] = aux_valor
      end
    end
    letters
  end
end
