require 'rails_helper'

RSpec.describe Like, type: :model do
  user = User.create(
    name: 'Doe Jogn',
    photo: 'http://photo.com',
    post_counter: 0
  )

  post = Post.create(
    title: 'Title',
    text: 'Text for the post',
    comments_counter: 0,
    likes_counter: 0,
    author_id: user.id
  )

  like = Like.create(post:, author: user)

  context 'update_likes_counter' do
    like.update_likes_counter

    it ' increment likes_counter' do
      expect(Post.find(post.id).likes_counter).eql?(post.likes_counter + 1)
    end
  end
end
