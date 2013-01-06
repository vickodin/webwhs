class Admin::DocumentsController < ApplicationController
  layout 'admin'
  before_filter :require_login
  before_filter :check_the_site

  def index
    @documents = Document.order(:created_at)
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
