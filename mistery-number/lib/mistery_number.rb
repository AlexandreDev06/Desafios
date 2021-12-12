class MisteryNumber
  def calculate(operation)
    narray = operation.split("=")
    result = narray[1].to_i
    for i in 0..500011
      result_2 = narray[0].gsub("?", "#{i}")
      if eval(result_2) == result
        return i
      end
    end
  end
end
