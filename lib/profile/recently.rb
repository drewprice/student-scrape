class Recently
  attr_accessor :blog, :projects, :codeschool, :github, :treehouse, :codecademy, :coderwall
  def initialize(doc)
    @doc = doc

    @blog = read_blog
    @projects = read_projects
    @codecademy = read_codecademy
    @treehouse = read_treehouse
    @codeschool = read_codeschool
    @coderwall = read_coderwall
  end

  private

  def read_coderwall
    @doc.css("div#scroll-recently div#ok-text-column-2 p a")[3].attr("href")
  end

  def read_codeschool
    @doc.css("div#scroll-recently div#ok-text-column-2 p a")[0].attr("href")
  end

  def read_codecademy
    @doc.css("div#scroll-recently div#ok-text-column-2 p a")[2].attr("href")
  end

  def read_treehouse
    @doc.css("div#scroll-recently div#ok-text-column-2 p a")[1].attr("href")
  end

  def read_projects
    @doc.css("div#scroll-recently div#ok-text-column-4 p").text
  end

  def read_blog
    ret=@doc.css("div#scroll-recently div#ok-text-column-3 p a").collect do |link|
      "#{link.text} : #{link.attr("href")}"
    end
    ret.join("\n")

  end
end
