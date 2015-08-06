# info from index_page scrape
students = {
  student: Student.new( properties = {
    name: 'name namerson',
    url: 'url',
    tag: 'blah',
    excerpt:'blah blah'
    }),
  other_student: #<Student object>,
  # etc
}

# init_scrape = [[student_name, profile_url]]

class Student
  attr_reader :name, :url, :tag, :excerpt, :about, :coder_cred, :recently, :favorites

  def initialize(properties = {})

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
