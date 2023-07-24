class ClonTuitsController < ApplicationController
  before_action :set_clon_tuit, only: %i[ show edit update destroy ]

  # GET /clon_tuits or /clon_tuits.json
  def index
    @pagy, @clon_tuits = pagy(ClonTuit.all)

    if params[:query_text].present?
      @clon_tuits = @clon_tuits.whose_name_starts_with(params[:query_text])
    end
  end

  # GET /clon_tuits/1 or /clon_tuits/1.json
  def show
  end

  def preview
  end

  def search
  end

  # GET /clon_tuits/new
  def new
    @clon_tuit = ClonTuit.new
  end

  # GET /clon_tuits/1/edit
  def edit
  end

  # POST /clon_tuits or /clon_tuits.json
  def create
    @clon_tuit = ClonTuit.new(clon_tuit_params)

    respond_to do |format|
      if @clon_tuit.save
        format.html { redirect_to clon_tuit_url(@clon_tuit), notice: "Clon tuit was successfully created." }
        format.json { render :show, status: :created, location: @clon_tuit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @clon_tuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clon_tuits/1 or /clon_tuits/1.json
  def update
    respond_to do |format|
      if @clon_tuit.update(clon_tuit_params)
        format.html { redirect_to clon_tuit_url(@clon_tuit), notice: "Clon tuit was successfully updated." }
        format.json { render :show, status: :ok, location: @clon_tuit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @clon_tuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clon_tuits/1 or /clon_tuits/1.json
  def destroy
    @clon_tuit.destroy

    respond_to do |format|
      format.html { redirect_to clon_tuits_url, notice: "Clon tuit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clon_tuit
      @clon_tuit = ClonTuit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clon_tuit_params
      params.require(:clon_tuit).permit(:user, :email, :tuit, :date)
    end
end
