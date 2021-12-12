class Finder
  def index_of(list, value)
    total = []

    list.each_with_index do |element, index|
      if element === value
        total << index
      elsif element.include?(value) == true
        total << index
      end
    end
    total
  end
end
