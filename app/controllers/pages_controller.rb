# app/controllers/pages_controller.rb

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @home_page_content = HomePageContent.last
  end

  def index
    # Exemple : Si vous voulez afficher tous les objets de la classe HomePageContent
    @home_page_contents = HomePageContent.all
  end

  def show
    @home_page_content = HomePageContent.find(params[:id])
  end
end
