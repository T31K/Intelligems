class IntelligemsController < ApplicationController
  before_action :set_intelligem, only: %i[ show edit update destroy ]

  # GET /intelligems or /intelligems.json
  def index
    @intelligems = Intelligem.all
  end

  # GET /intelligems/1 or /intelligems/1.json
  def show
  end

  # GET /intelligems/new
  def new
    @intelligem = Intelligem.new
  end

  # GET /intelligems/1/edit
  def edit
  end

  # POST /intelligems or /intelligems.json
  def create
    @intelligem = Intelligem.new(intelligem_params)

    respond_to do |format|
      if @intelligem.save
        format.html { redirect_to action: "index" }
        format.json { render :show, status: :created, location: @intelligem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @intelligem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intelligems/1 or /intelligems/1.json
  def update
    respond_to do |format|
      if @intelligem.update(intelligem_params)
        format.html { redirect_to action: "index" }
        format.json { render :show, status: :ok, location: @intelligem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @intelligem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intelligems/1 or /intelligems/1.json
  def destroy
    @intelligem.destroy
    respond_to do |format|
      format.html { redirect_to intelligems_url, notice: "Intelligem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intelligem
      @intelligem = Intelligem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def intelligem_params
      params.require(:intelligem).permit(:name, :link_type, :link)
    end
end
