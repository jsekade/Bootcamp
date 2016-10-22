class Blog

	def initialize
		@posts = []

	end
	def add_post(post)
		 @posts.push(post)

	end
	def publish_front_page
    ordered_post = order_posts_date
	   order_posts_date.each do |post|
			puts "#{post.title}\n*****************\n#{post.text}\n----------------\n"
		end
	end
  def order_posts_date
    @posts.sort_by do |post|
      post.date
    end
  end

end

class Post
	attr_reader :title, :date, :text

	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end

end

blog = Blog.new
blog.add_post Post.new("Post title 1", "20160512", "Text post 1")
blog.add_post Post.new("Post title 2", "20130504", "Text post 2")
blog.add_post Post.new("Post title 3", "20160315", "Text post 3")
blog.add_post Post.new("Post title 4", "20160515", "Text post 4")
blog.publish_front_page
