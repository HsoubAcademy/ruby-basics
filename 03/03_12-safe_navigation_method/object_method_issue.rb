User = Struct.new(:name, :phone)
Post = Struct.new(:title, :body, :user)

user = User.new('mhdsyrwan', '123123')
post1 = Post.new('post with a user', 'post1 body', user)
post2 = Post.new('post without a user', 'post2 body', nil)

posts = [post1, post2]
posts.each do |post|
  username = post&.user&.name || 'no user'
  "#{post.title} | #{username}"
end
