class Admin::AlbumsController < ApplicationController
  layout 'admin'
  before_filter :require_login
  before_filter :check_the_site

  before_filter :check_the_children, :only => :destroy

  def index
    @albums = Album.order(:name)
  end

  def show
    @album = Album.find(params[:id])
    @images = @album.images
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end

  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(params[:album])
      redirect_to admin_images_path
    else
      render :action => "edit"
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to admin_images_path
  end

  private
  def check_the_children
    # todo: make the check
  end
end
