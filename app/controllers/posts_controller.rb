class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def create
    @post = current_user.post.build(posts_params)
    if @post.save
      flash[:notice] = "New Post"
      redirect_to post_path(@post)
    else
      flash[:error] = "Not created"
      render :new
    end
  end

  def index
    @post = Post.all
  end

  def new
    @post = current_user.post.build
  end

  private

  def posts_params
    params.require(:post).permit(:title, :description, :image)
  end
end
