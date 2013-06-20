class ArtworksController < ApplicationController
  def index
    @categories = Category.all
    @artworks = Artwork.order("position")
  end

  def show
    @categories = Category.all
    @artwork = Artwork.find(params[:id])
  end

  def new
    @categories = Category.all
    @artwork = Artwork.new
  end

  def edit
    @categories = Category.all
    @artwork = Artwork.find(params[:id])
  end

  def create
    @artwork = Artwork.new(params[:artwork])
    @categories = Category.all

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
    @categories = Category.all

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

    redirect_to artworks_url
  end


  def sort
    params[:artwork].each_with_index do |id, index|
      Artwork.update_all({position: index+1}, {id: id})
    end
    render nothing: true
  end
end
