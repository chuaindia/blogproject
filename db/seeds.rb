user1 = User.create!(
  Name: 'Danny Denzonpa',
  Photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
  Bio: 'Actor from Gangtok,Nepal.'
)

user2 = User.create!(
  Name: 'Malay Ghosh',
  Photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
  Bio: 'Architect from Kolkata, India.'
)

10.times do |post|
  @user1_post = Post.create!(
    user: user1,
    Title: "This is my post No: #{post + 1}",
    Text: "I love hills. If you travel from Siliguri to Gangtok, you can see my house in each and every corner of the zig-zag way. Though I play the part of villain in Cinemas, I lead a life which is hundred miles from crime. I like solitude of nature."
  )
end

10.times do |post|
  @user2_post = Post.create!(
    user: user2,
    Title: "This is my post No: #{post + 1}",
    Text: "I am an architect. I struggled in my life a lot. My family supports me beyond imagination. So today I am a sucessful Architect. When I see my creation based on my own origin I feel those as my children. I like sprts and Travelling."
  )
end

10.times do |comment|
  Comment.create!(
    post: @user1_post,
    user: user1,
    Text: "This is my comment number #{comment + 1}",
  )
end

10.times do |comment|
  Comment.create!(
    post: @user2_post,
    user: user2,
    Text: "This is my comment number #{comment + 1}",
  )
end
