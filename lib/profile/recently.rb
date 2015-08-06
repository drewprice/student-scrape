class Recently
  attr_accessor :blog, :projects
  def initialize(doc)
    @doc = doc

    @blog = read_blog
    @projects = read_projects
  end

  private

  def read_projects
    @doc.css("").text
  end

  def read_blog
    @doc.css("").text
  end
end
