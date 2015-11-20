class Post < ActiveRecord::Base

  belongs_to :user

  validates :title, presence: true, length: { minimum: 10 }

  validates :text, presence: true, length: { minimum: 50 }

  def next
    user.posts.where("id > ?", id).first
  end

  def prev
    user.posts.where("id < ?", id).last
  end

end
