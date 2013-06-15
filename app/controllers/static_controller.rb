class StaticController < ApplicationController
  def home
  	@categories = Category.all
    @blogs = Blog.all
  end

  def contact
    @categories = Category.all
  end
end
