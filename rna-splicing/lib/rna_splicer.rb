class RnaSplicer
  def splice(rna, introns)
    introns.each { |intron| rna.gsub!(intron, "") }
    rna
  end
end
