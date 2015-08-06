class Social
  attr_accessor :cities, :other
  def initialize(doc)
    @doc = doc

    @cities = read_cities
    @other = read_other
  end

  private

  def read_cities
    @doc.css("").text
  end

  def read_other
    @doc.css("").text
  end
end
