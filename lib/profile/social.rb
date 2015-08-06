class Social
  attr_accessor :twitter, :linkedin, :github, :rss
  def initialize(doc)
    @doc = doc

    @twitter = read_twitter
    @linkedin = read_linkedin
    @github = read_github
    @rss = read_rss
  end

  private

  def read_twitter
    @doc.css("").text
  end

  def read_linkedin
    @doc.css("").text
  end

  def read_github
    @doc.css("").text
  end

  def read_rss
    @doc.css("").text
  end
end
