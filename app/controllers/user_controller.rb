class UserController < ApplicationController

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

end
