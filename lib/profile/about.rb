class About
  attr_reader :bio, :edu, :work
  def initialize(doc)
    @doc = doc

    @bio = read_bio
    @edu =
    @work =
  end

  def biography
    bio
  end

  def education
    edu
  end

  private

  def read_work
    company = @doc.css("#ok-text-column-4 h4").text
    description =
  end

  def work_helper

  end

  def read_edu
    @doc.css("#ok-text-column-3 ul").children
      .map { |li| li.text.strip }
      .delete_if(&:empty?)
      .join("\n")
  end

  def read_bio
    @doc.css("#ok-text-column-2 p").text
      .split(/- Code School/)
      .first
      .strip
  end
end
