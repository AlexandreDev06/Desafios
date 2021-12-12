class FileParser
  def to_integer(num)
    num.to_i(2)
  end

  def convert(arquivo)
    conteudo = File.read(arquivo).split("\n")
    narray = []
    conteudo.each do |element|
      narray << to_integer(element)
    end
    narray.sum
  end
end
