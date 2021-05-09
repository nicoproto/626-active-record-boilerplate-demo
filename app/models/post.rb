DB = SQLite3::Database.new("db/database.sqlite3")

class Post < ActiveRecord::Base
  def initialize(attributes = {})
    @title = attributes[:title]
    @content = attributes[:content]
  end

  def save
    DB.execute("INSERT INTO posts (title, content) VALUES ('AR is amazing', 'Something...')")
  end
end

new_post = Post.new(title: "AR is amazing", content: "Something...")
new_post.save