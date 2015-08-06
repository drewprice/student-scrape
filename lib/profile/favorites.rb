class Favorites
  attr_accessor :cities, :other, :projects
  def initialize(doc)
    @doc = doc

    @cities = read_cities
    @other = read_other
    @projects = read_projects
  end

  private

  def read_cities
    cities = @doc.css("div#scroll-favorites div#ok-text-column-2 p a")
    cities = cities.collect { |city| city.text }
    cities.join("\n")
  end

  def read_other
    @doc.css("div#scroll-favorites div#ok-text-column-3 p a").attr("href").value
  end

  def read_projects
    @doc.css("div#scroll-favorites div#ok-text-column-4 p").text
  end

end

