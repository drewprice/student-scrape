class Student
  attr_accessor :name, :url, :tag, :excerpt, :photo, :profile
  def initialize(name,url,tag,excerpt,photo)
    @name=name
    # TODO url?
    @url='http://localhost:8000/' + url
    @tag=tag
    @excerpt=excerpt
    @photo='http://localhost:8000/' + photo
  end
  def profile
    @profile= Profile.new(self)
  end
end
