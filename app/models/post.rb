class Post < ActiveRecord::Base

  belongs_to :user

  validates :title, presence: true, length: { minimum: 10 }

  validates :text, presence: true, length: { minimum: 50 }

end
