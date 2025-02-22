class CharactersController < ApplicationController
  def index
    @characters = Character.all

    # Search
    if params[:search].present?
      @characters = @characters.where("name LIKE ?", "%#{params[:search]}%")
    end

    # Filter by Publisher
    if params[:publisher].present? && params[:publisher] != "All"
      @characters = @characters.where(publisher: params[:publisher])
    end

    # Pagination
    @characters = @characters.page(params[:page]).per(30)
  end

  def show
    @character = Character.find_by(id: params[:id])

    if @character.nil?
      flash[:alert] = "Character not found."
      redirect_to characters_path
    end
  end
end
