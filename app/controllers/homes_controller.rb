class HomesController < ApplicationController
  def index
    @home = Home.all
    @post = Post.all
  end

  def show

  respond_to do |format|
    format.any(:html, :m4v, :ogv, :webm) {
    }
  end
end
end
