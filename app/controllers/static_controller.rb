class StaticController < ApplicationController
  skip_before_filter :authorize

  def home
  	@categories = Category.all
    @blogs = Blog.order("position")
  end

  def contact
    @categories = Category.all
  end
end
