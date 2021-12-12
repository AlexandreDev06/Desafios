class DoubleStrand
  def complementary_strip(strip)
    dna = {
      "A" => "T",
      "T" => "A",
      "G" => "C",
      "C" => "G",
    }
    array = []
    strip.split("").each do |letter|
      array << dna[letter]
    end
    array.join
  end
end
