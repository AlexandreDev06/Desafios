class FileParser
  def to_binary_file(binario)
    binario = binario.split(";").map { |x| x.to_i }
    new_binario = binario.map { |x| x.to_s(2) }.join("\n")
    File.open("data/data.txt", "w") do |texto|
      texto << new_binario
    end
  end
end
