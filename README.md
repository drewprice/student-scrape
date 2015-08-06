### Index scrape outputs/Command line receives
```ruby
class Student
  attr_reader :name, :url, :tag, :excerpt, :img, :profile

  def initialize(name, url, tag, excerpt)
    @name = name
    @url = url
    @tag = tag
    @excerpt = excerpt
  end

  def open_profile
    @profile = Profile.new(self)
  end

  def twitter
    profile.social.twitter
  end

  # etc
end

class Interface
  def initialize
    @student =
  end

  # to_s
end

students = {
  student: StudentBrief.new(name, url, tag, excerpt),
  other_student: #<Student object>,
  # etc
}
```

### ...which returns:
```ruby
class Profile
  attr_reader :about, :coder_cred, :recently, :favorites

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
```
