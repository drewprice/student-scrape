# Index scrape outputs/Command line receives
class Student
  attr_reader :name, :url, :tag, :excerpt, :img, :profile

  def initialize(name, url, tag, excerpt)
    @name = name
    @url = url
    @tag = tag
    @excerpt = excerpt
  end

  def profile=()
    @profile = Profile.new(self)
  end
end

students = {
  student: StudentBrief.new(name, url, tag, excerpt),
  other_student: #<Student object>,
  # etc
}

# Profile scrape gives CLI ability to do something like
def open_profile
  Student.new(student.url)
end

# ...which returns:
class Profile
  attr_reader :about, :coder_cred, :recently, :favorites

  def initialize(properties = {})
    @social = SocialProfile.new
    @quote = # this
    @about = {
      bio: 'bio stuff',
      # etc
      # page's visual hiearchy
    }
    @coder_cred = {
      # page's visual hiearchy
    }
    @recently = {
      # page's visual hiearchy
    }
    @favorites = {
      # page's visual hiearchy
    }
  end
end
































# info from index_page scrape
students = {
  student: StudentBrief.new(name, url, tag, excerpt),
  other_student: #<Student object>,
  # etc
}

def open_profile
  Student.new(student.url)
end
# init_scrape = [[student_name, profile_url]]
class StudentBrief
  attr_reader :name, :url, :tag, :excerpt

  def initialize(name, url, tag, excerpt)
    @name = name
    @url = url
    @tag = tag
    @excerpt = excerpt
  end
end

class Student
  attr_reader :about, :coder_cred, :recently, :favorites

  def initialize(properties = {})
    @social = SocialProfile.new
    @quote = # this
    @about = {
      bio: 'bio stuff',
      # etc
      # page's visual hiearchy
    }
    @coder_cred = {
      # page's visual hiearchy
    }
    @recently = {
      # page's visual hiearchy
    }
    @favorites = {
      # page's visual hiearchy
    }
  end
end

# tyler.about[:bio]
