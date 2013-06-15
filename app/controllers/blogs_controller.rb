class BlogsController < ApplicationController
  # GET /blogs
  # GET /blogs.json
  def index
    @categories = Category.all
    @blogs = Blog.all
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @categories = Category.all
    @blog = Blog.find(params[:id])
  end

  # GET /blogs/new
  # GET /blogs/new.json
  def new
    @categories = Category.all
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
    @categories = Category.all
    @blog = Blog.find(params[:id])
  end

  # POST /blogs
  # POST /blogs.json
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

  # PUT /blogs/1
  # PUT /blogs/1.json
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

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    respond_to do |format|
      format.html { redirect_to blogs_url }
    end
  end
end
