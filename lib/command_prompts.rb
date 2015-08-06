class Interface


  def initialize
    @students_list = Index.new
    all_students = @students_list.students
    greeting
  end

  def greeting
    puts "Every Story Has Heroes.\nWe're 26 people on a journey to learn to love code.\n\nType index or the full name of whomever you are stalking.\nAlternately, find a particular twitter, bio, or blog if you are just here for business."
    index_or_other
  end

  def index_or_other
    input = gets.chomp.downcase
    if input == 'index'
      index
    if input == 'twitter'
      hotkey(twitter)
    if input == 'bio' || input == 'biography'
      hotkey(bio)
    if input == 'blog'
      hotkey(blog)
    elsif all_students.any? {|n, o| n.downcase == input}
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
    name = gets.chomp.downcase
    find(name)
  end

  def find(name)
    if all_students.any? {|n, o| n.downcase == name}
      puts "this happens"
      #instantiates profile
      all_students[name.downcase].open_profile
      puts "Name: #{name}
      \nBiography: #{all_students[name.downcase].biography}
      \nEducation: #{all_students[name.downcase].education}
      \nWork: #{all_students[name.downcase].work}
      \nGithub: #{all_students[name.downcase].github}
      \nTreehouse: #{all_students[name.downcase].treehouse}
      \nCodeSchool: #{all_students[name.downcase].codeschool}
      \nCoderwall: #{all_students[name.downcase].coderwall}
      \nBlogs: #{all_students[name.downcase].blogs}
      \nCoding projects: #{all_students[name.downcase].coding_projects}
      \nFavorite cities: #{all_students[name.downcase].cities}
      \nFavorite sites: #{all_students[name.downcase].sites}
      \nPersonal projects: #{all_students[name.downcase].personal_projects}
      \nPicture: #{all_students[name.downcase].img}
      \n"
    else
      puts "No srsly tho."
      look_up
    end
  end

  def hotkey(item)
    puts "Whose?"
    name = gets.chomp.downcase
    case item
      when item == "twitter"
        puts all_students[name.downcase].twitter
       when item == "bio"
        puts all_students[name.downcase].bio
      when item == "blog"
        puts all_students[name.downcase].blog
    end
  end
end
