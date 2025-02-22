class CharactersController < ApplicationController
  def index
    @characters = Character.page(params[:page]).per(30)
  end
end
