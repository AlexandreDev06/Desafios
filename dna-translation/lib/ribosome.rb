class Ribosome
  def translate(rna_messenger)
    rna_messenger = complementary_strip(rna_messenger)
    aminoacidos = {
      "UCA" => "aa1",
      "AAC" => "aa2",
      "UUU" => "aa3",
      "AAA" => "aa4",
      "AUC" => "aa5",
      "CCA" => "aa6",
      "GGU" => "aa7",
      "GCC" => "aa8",
    }
    array = []
    rna_messenger.scan(/.../).each do |rna|
      array << aminoacidos[rna]
    end

    if array.include?(nil)
      "Translation aborted"
    else
      array.join("-")
    end
  end

  def complementary_strip(strip)
    dna = {
      "A" => "U",
      "U" => "A",
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
