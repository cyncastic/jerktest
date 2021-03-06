class MediaController < ApplicationController
  def index
    @media = Medium.all
  end

  def new
    @medium = Medium.new
  end

  def edit
    @medium = Medium.find(params[:id])
  end

  def create
    @medium = Medium.new(params[:medium])

    respond_to do |format|
      if @medium.save
        format.html { redirect_to media_url, notice: 'Medium was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @medium = Medium.find(params[:id])

    respond_to do |format|
      if @medium.update_attributes(params[:medium])
        format.html { redirect_to @medium, notice: 'Medium was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @medium = Medium.find(params[:id])
    @medium.destroy

    respond_to do |format|
      format.html { redirect_to media_url }
      format.js { render nothing: true}
    end
  end
end
