class PocketsController < ApplicationController
  before_action :set_pocket, only: %i[ show edit update destroy ]

  # GET /pockets or /pockets.json
  def index
    @pockets = Pocket.all
  end

  # GET /pockets/1 or /pockets/1.json
  def show
  end

  # GET /pockets/new
  def new
    @pocket = Pocket.new
  end

  # GET /pockets/1/edit
  def edit
  end

  # POST /pockets or /pockets.json
  def create
    @pocket = Pocket.new(pocket_params)

    respond_to do |format|
      if @pocket.save
        format.html { redirect_to pocket_url(@pocket), notice: "Pocket was successfully created." }
        format.json { render :show, status: :created, location: @pocket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pocket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pockets/1 or /pockets/1.json
  def update
    respond_to do |format|
      if @pocket.update(pocket_params)
        format.html { redirect_to pocket_url(@pocket), notice: "Pocket was successfully updated." }
        format.json { render :show, status: :ok, location: @pocket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pocket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pockets/1 or /pockets/1.json
  def destroy
    @pocket.destroy

    respond_to do |format|
      format.html { redirect_to pockets_url, notice: "Pocket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pocket
      @pocket = Pocket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pocket_params
      params.require(:pocket).permit(:author_id, :name)
    end
end
