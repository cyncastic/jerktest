class StaticController < ApplicationController
  skip_before_filter :authorize

  def home
  	@categories = Category.all
    @blogs = Blog.all
  end

  def contact
    @categories = Category.all
  end
end
