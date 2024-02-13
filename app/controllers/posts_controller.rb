class PostsController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = current_user.posts.new(post_params)

    redirect_to root_path if @post.save
  end

  private

  def post_params
    params.require(:post).permit(:photo)
  end
end
