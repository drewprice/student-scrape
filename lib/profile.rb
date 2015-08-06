class Profile
  attr_reader :about, :social, :recently, :favorites

  def initialize(student)
    @student = student
    @html = open(student.url)
    @doc = Nokogiri::HTML(@html)

    @about = About.new(@doc)
    @social = Social.new(@doc)
    @recently = Recently.new(@doc)
    @favorites = Favorites.new(@doc)
  end
end
