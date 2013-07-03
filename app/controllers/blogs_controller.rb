class BlogsController < ApplicationController

  def index
    @categories = Category.all
    @blogs = Blog.order("position")
  end

  def show
    @categories = Category.all
    @blog = Blog.find(params[:id])
  end

  def new
    @categories = Category.all
    @blog = Blog.new
  end

  def edit
    @categories = Category.all
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.new(params[:blog])

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @blog = Blog.find(params[:id])

    respond_to do |format|
      if @blog.update_attributes(params[:blog])
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    respond_to do |format|
      format.html { redirect_to blogs_url }
      format.js { render nothing: true }
    end
  end

  def sort
    params[:blog].each_with_index do |id, index|
      Blog.update_all({ position: index + 1 }, { id: id })
    end
    render nothing: true
  end
end
