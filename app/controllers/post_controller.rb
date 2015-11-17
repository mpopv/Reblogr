class PostController < ApplicationController

  belongs_to :user
  has_many :comments, dependent: :destroy

end
