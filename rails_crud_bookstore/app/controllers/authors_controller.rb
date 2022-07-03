class AuthorsController < ApplicationController
  
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def edit
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to @author
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @author = Author.find(params[:id])
    if @author.update(author_params)
      redirect_to @author
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to root_path, status: :see_other
  end

  private
    # Only allow a list of trusted parameters through.
    def author_params
      params.fetch(:author, {})
    end
end

