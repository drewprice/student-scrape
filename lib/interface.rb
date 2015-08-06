class Interface
  attr_reader :all_students

  def initialize
    @students_list = Index.new
    @all_students = @students_list.students
    greeting
  end

  def greeting
    puts "Every Story Has Heroes.\nWe're 26 people on a journey to learn to love code.\n\nType index or the full name of whomever you are stalking.\nAlternately, find a particular twitter, bio, or blog if you are just here for business."
    index_or_other
  end

  def index_or_other
    input = gets.chomp
    case
    when input == 'index'
      index
    when input == 'twitter'
      hotkey(twitter)
    when input == 'bio' || input == 'biography'
      hotkey(bio)
    when input == 'blog'
      hotkey(blog)
    when all_students.any? {|n, o| n == input}
      find(input)
    else
      puts "If you don't know the full name of the person you are stalking, you soon will. Type index."
      index_or_other
    end
  end

  def index
    all_students.each {|name, object| puts "#{name} - #{object.tag}" }
    puts "\n\n"
    look_up
  end

  def look_up
    puts 'Who do you want to look up?'
    name = gets.chomp
    find(name)
  end

  def find(name)
    if all_students.any? {|n, o| n == name }
      puts "this happens"
      #instantiates profile
      # TODO sanitize name
      student = all_students[name]
      puts "Name: #{name}
      \nBiography: #{student.profile.about.biography}
      \nEducation: #{student.profile.about.education}
      \nWork: #{student.profile.about.work}
      \nGithub: #{student.profile.social.github}
      \nTreehouse: #{student.profile.recently.treehouse}
      \nCodeSchool: #{student.profile.recently.codeschool}
      \nCoderwall: #{student.profile.recently.coderwall}
      \nBlogs: #{student.profile.recently.blog}
      \nCoding projects: #{student.profile.recently.projects}
      \nFavorite cities: #{student.profile.favorites.cities}
      \nFavorite sites: #{student.profile.favorites.websites}
      \nPersonal projects: #{student.profile.favorites.projects}
      \nPicture: #{student.photo}
      \n"
    else
      puts "No srsly tho."
      look_up
    end
  end

  def hotkey(item)
    puts "Whose?"
    name = gets.chomp
    case item
      when item == "twitter"
        puts all_students[name].twitter
       when item == "bio"
        puts all_students[name].bio
      when item == "blog"
        puts all_students[name].blog
    end
  end
end
