class CharactersController < ApplicationController
  def index
    @characters = Character.page(params[:page]).per(50)
  end
end
