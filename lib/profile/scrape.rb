def profile_scrape
  # TODO replace w/ variable
  profile_html = open("http://web0715.students.flatironschool.com/students/drew_price.html")
  profile_doc = Nokogiri::HTML(profile_html)

  quote = profile_doc.css('div.textwidget h3').text

  Student.new
end

profile_doc
