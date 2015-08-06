class Profile
  attr_reader :name, :url, :tag, :excerpt, :about, :coder_cred, :recently, :favorites

  def initialize(student)
    @student = student
    @html = open(student.url)
    @doc = Nokogiri::HTML(@html)

    @about = About.new(@doc)
    @social = Social.new()
    @coder_cred = CoderCred.new()
    @recently = Recently.new()
    @favorites = Favorite.new()
  end
end
