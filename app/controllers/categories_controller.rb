class CategoriesController < ApplicationController
  skip_before_filter :authorize, only: [:show]

  def index
    @categories = Category.order("position")
  end

  def show
    @category = Category.find(params[:id])
    @artworks = @category.artworks.order("position")
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(params[:category])

    respond_to do |format|
      if @category.save
        format.html { redirect_to artworks_path(category_id: @category.id), notice: 'Category was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to artworks_path(category_id: @category.id), notice: 'Category was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to categories_url }
      format.js { render nothing: true }
    end
  end

  def sort
    params[:category].each_with_index do |id, index|
      Category.update_all({position: index+1}, {id: id})
    end
    render nothing: true
  end
end
