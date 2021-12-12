require "json"

class Recipe
  attr_reader :title, :description, :ingredients, :cook_time, :featured

  def initialize(title:, description:, ingredients:, cook_time:,
                 featured: false)
    @title = title
    @description = description
    @ingredients = ingredients
    @cook_time = cook_time
    @featured = featured
  end

  def self.from_json(json_file)
    attributes = JSON.parse(File.read(json_file))
    if attributes.count == 5
      Recipe.new(title: attributes["title"],
                 description: attributes["description"],
                 ingredients: attributes["ingredients"],
                 cook_time: attributes["cook_time"],
                 featured: attributes["featured"])
    elsif attributes.count < 4
      attributes.map do |element|
        Recipe.new(title: element["title"],
                   description: element["description"],
                   ingredients: element["ingredients"],
                   cook_time: element["cook_time"],
                   featured: element["featured"])
      end
    end
  end

  def save_to_file
    File.open("data/recipe.json", "w+") do |f|
      f.print to_json
    end
  end
end
