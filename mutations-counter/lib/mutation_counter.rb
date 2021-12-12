class MutationCounter
  def calculate(dna_collection)
    total = 0
    dna_collection.each do |element|
      total = 0
      dna1 = element[0].split("")
      dna2 = element[1].split("")
      dna1.each_with_index do |dna, index|
        if dna1[index] != dna2[index]
          total += 1
        end
      end
    end
    total
  end
end
