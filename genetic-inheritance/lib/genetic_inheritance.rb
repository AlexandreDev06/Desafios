class GeneticInheritance
  def predict_proportions(first_individual, second_individual)
    gametas = []
    combination = []
    first_individual.each_char do |letter1|
      second_individual.each_char do |letter2|
        narray = (letter1 + letter2).split("").sort.join
        if gametas.include?(narray)
          nil
        else
          gametas << narray
        end
      end
    end
    gametas.each do |element|
      array = element.split("")
      if array[0] != array[1] && gametas.count > 1
        combination << [element, 1 / 2.to_r]
      elsif array[0] == array[1] && gametas.count > 2
        combination << [element, 1 / 4.to_r]
      elsif gametas.count <= 1
        combination << [element, 1 / 1.to_r]
      elsif array[0] == array[1] && gametas.count < 3
        combination << [element, 1 / 2.to_r]
      end
    end
    combination
  end
end
