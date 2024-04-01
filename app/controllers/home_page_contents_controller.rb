class HomePageContentsController < ApplicationController
  before_action :set_home_page_content, only: %i[ show edit update destroy ]

  # GET /home_page_contents or /home_page_contents.json
  def index
    @home_page_contents = HomePageContent.all
  end

  # GET /home_page_contents/1 or /home_page_contents/1.json
  def show
  end

  # GET /home_page_contents/new
  def new
    @home_page_content = HomePageContent.new
  end

  # GET /home_page_contents/1/edit
  def edit
  end

  # POST /home_page_contents or /home_page_contents.json
  def create
    @home_page_content = HomePageContent.new(home_page_content_params)

    respond_to do |format|
      if @home_page_content.save
        format.html { redirect_to home_page_content_url(@home_page_content), notice: "Home page content was successfully created." }
        format.json { render :show, status: :created, location: @home_page_content }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @home_page_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_page_contents/1 or /home_page_contents/1.json
  def update
    respond_to do |format|
      if @home_page_content.update(home_page_content_params)
        format.html { redirect_to home_page_content_url(@home_page_content), notice: "Home page content was successfully updated." }
        format.json { render :show, status: :ok, location: @home_page_content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @home_page_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_page_contents/1 or /home_page_contents/1.json
  def destroy
    @home_page_content.destroy!

    respond_to do |format|
      format.html { redirect_to home_page_contents_url, notice: "Home page content was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_page_content
      @home_page_content = HomePageContent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def home_page_content_params
      params.require(:home_page_content).permit(:title, :subtitle, :content, :photo)
    end
end
