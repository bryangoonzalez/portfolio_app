class WelcomeController < ApplicationController
  def index
    @posts = Post.limit(3).order(date_posted: :desc)
  end

end
