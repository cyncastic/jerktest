class MenuLinksController < ApplicationController

  def index
    @menu_links = MenuLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @menu_links }
    end
  end

  def show
    @menu_link = MenuLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @menu_link }
    end
  end

  def new
    @menu_link = MenuLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @menu_link }
    end
  end

  def edit
    @menu_link = MenuLink.find(params[:id])
  end

  def create
    @menu_link = MenuLink.new(params[:menu_link])

    respond_to do |format|
      if @menu_link.save
        format.html { redirect_to menu_links_url, notice: 'Menu link was successfully created.' }
        format.json { render json: @menu_link, status: :created, location: @menu_link }
      else
        format.html { render action: "new" }
        format.json { render json: @menu_link.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @menu_link = MenuLink.find(params[:id])

    respond_to do |format|
      if @menu_link.update_attributes(params[:menu_link])
        format.html { redirect_to menu_links_url, notice: 'Menu link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @menu_link.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @menu_link = MenuLink.find(params[:id])
    @menu_link.destroy

    respond_to do |format|
      format.html { redirect_to menu_links_url }
      format.json { head :no_content }
    end
  end
end
