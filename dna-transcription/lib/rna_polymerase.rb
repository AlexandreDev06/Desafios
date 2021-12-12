class RnaPolymerase
  def transcribe(dna, beginning, ending)
    if dna.include?(beginning)
      rna = dna.split(beginning)
      rna = rna.slice(1)
      rna = rna.split(ending)
      rna = rna.slice(0)
      if rna == "" || rna == nil || rna.size < 5
        "Sequence not found"
      else
        complementary_strip(rna)
      end
    else
      "Sequence not found"
    end
  end
end

def complementary_strip(strip)
  dna = {
    "A" => "U",
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
