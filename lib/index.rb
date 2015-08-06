class Index
  attr_accessor :students
  def initialize
    html=open('http://web0715.students.flatironschool.com/')
    index=Nokogiri::HTML(html)
    @students={}
    index.search("li.home-blog-post").each do |post|
      name=post.search("div.blog-title a").text
      url=post.search("div.blog-title a").attr("href").value
      tag=post.search("p.home-blog-post-meta").text
      excerpt=post.search("div.excerpt").text.strip
      photo=post.search("div.blog-thumb a img").attr('src').value
      #puts "#{name} #{url} #{tag} #{excerpt} #{photo}"
      @students[name]=Student.new(name,url,tag,excerpt,photo)
    end
    @students
  end
end
