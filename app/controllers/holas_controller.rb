class HolasController < ApplicationController
  before_action :set_hola, only: [:show, :edit, :update, :destroy]

  # GET /holas
  # GET /holas.json
  def index
    @holas = Hola.all
  end

  # GET /holas/1
  # GET /holas/1.json
  def show
  end

  # GET /holas/new
  def new
    @hola = Hola.new
  end

  # GET /holas/1/edit
  def edit
  end

  # POST /holas
  # POST /holas.json
  def create
    @hola = Hola.new(hola_params)

    respond_to do |format|
      if @hola.save
        format.html { redirect_to @hola, notice: 'Hola was successfully created.' }
        format.json { render :show, status: :created, location: @hola }
      else
        format.html { render :new }
        format.json { render json: @hola.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /holas/1
  # PATCH/PUT /holas/1.json
  def update
    respond_to do |format|
      if @hola.update(hola_params)
        format.html { redirect_to @hola, notice: 'Hola was successfully updated.' }
        format.json { render :show, status: :ok, location: @hola }
      else
        format.html { render :edit }
        format.json { render json: @hola.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /holas/1
  # DELETE /holas/1.json
  def destroy
    @hola.destroy
    respond_to do |format|
      format.html { redirect_to holas_url, notice: 'Hola was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hola
      @hola = Hola.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hola_params
      params.require(:hola).permit(:texto)
    end
end
