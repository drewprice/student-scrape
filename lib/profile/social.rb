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
    @doc.css('div.social-icons a').first.attr("href")
  end

  def read_linkedin
    @doc.css('div.social-icons a')[1].attr("href")
  end

  def read_github
    @doc.css('div.social-icons a')[2].attr("href")
  end

  def read_rss
    @doc.css('div.social-icons a')[3].attr("href")
  end
end
