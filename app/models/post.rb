class Post < ActiveRecord::Base

  belongs_to :user

  # again, minor, but common ruby/rails style wouldn't put whitespace between
  # these two validations.
  validates :title, presence: true, length: { minimum: 10 }

  validates :text, presence: true, length: { minimum: 50 }

  # it'd be a good idea to put an `order` clause on these to order by id, just
  # because the database may not always order these results by id.
  # nice use of instance methods on your models though!
  def next
    user.posts.where("id > ?", id).first
  end

  def prev
    user.posts.where("id < ?", id).last
  end

end
