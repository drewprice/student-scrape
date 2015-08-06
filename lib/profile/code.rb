class CoderCred
  attr_accessor :github, :treehouse, :codeschool, :coderwall
  def initialize(doc)
    @doc = doc

    @github = read_github
    @treehouse = read_treehouse
    @codeschool = read_codeschool
    @coderwall = read_coderwall
  end

  private

  def read_coderwall
    @doc.css("").text
  end

  def read_codeschool
    @doc.css("").text
  end

  def read_github
    @doc.css("").text
  end

  def read_treehouse
    @doc.css("").text
  end
end
