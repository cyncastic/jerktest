class ArtworksController < ApplicationController
  def index
    if !params[:category_id]
      params[:category_id] = Category.last.id
    end
    @artworks = Category.find(params[:category_id]).artworks
    @categories = Category.order("position")
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  def new
    @artwork = Artwork.new
    @media = Medium.all
    @media = @media.map{|name| name.name}
  end

  def edit
    @artwork = Artwork.find(params[:id])
  end

  def create
    @artwork = Artwork.new(params[:artwork])
    if @artwork.save
      if params[:artwork][:img_url]
        render :crop
      else
        redirect_to @artwork, notice: 'Artwork was successfully created.'
      end
    else
      render :new
    end
  end

  def update
    @artwork = Artwork.find(params[:id])
    if @artwork.update_attributes(params[:artwork])
      if params[:artwork][:img_url]
        render :crop
      else
        redirect_to @artwork, notice: 'Artwork was successfully updated.'
      end
    else
      render :edit
    end
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy

    respond_to do |format|
      format.html { redirect_to artworks_url }
      format.js { render nothing: true }
    end
  end

  def sort
    params[:artwork].each_with_index do |id, index|
      Artwork.update_all({position: index+1}, {id: id})
    end
    render nothing: true
  end
end
