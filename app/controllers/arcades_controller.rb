class ArcadesController < ApplicationController
  before_action :set_arcade, only: [:show, :edit, :update, :destroy,:add_components, :update_arcade_components]
  
  # GET /arcades
  # GET /arcades.json
  def index
    @arcades = Arcade.all
  end

  def my_arcades
    @arcades = current_user.arcades
  end

  # GET /arcades/1
  # GET /arcades/1.json
  def show

  end

  # GET /arcades/new
  def new    
    @arcade = Arcade.new
    @designs = Design.all
  end

  # GET /arcades/1/edit
  def edit
  end

  def add_components
    @components = Component.all
  end

  def update_arcade_components    
    if @arcade.update_arcade_components(arcade_params[:component_ids])
      @arcade.set_price
      redirect_to arcade_path(@arcade)
    else
      redirect_to add_components_arcade_path(@arcade), alert: 'No se pudo agregar los componentes'
    end
  end

  # POST /arcades
  # POST /arcades.json
  def create
    
    @arcade = Arcade.new(arcade_params)
    @arcade.user = current_user

    respond_to do |format|
      if @arcade.save
        format.html { redirect_to add_components_arcade_path(@arcade), notice: 'Arcade was successfully created.' }
        format.json { render :show, status: :created, location: @arcade }
      else
        format.html { render :new }
        format.json { render json: @arcade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arcades/1
  # PATCH/PUT /arcades/1.json
  def update
    respond_to do |format|
      if @arcade.update(arcade_params)
        format.html { redirect_to @arcade, notice: 'Arcade was successfully updated.' }
        format.json { render :show, status: :ok, location: @arcade }
      else
        format.html { render :edit }
        format.json { render json: @arcade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arcades/1
  # DELETE /arcades/1.json
  def destroy
    @arcade.destroy
    respond_to do |format|
      format.html { redirect_to arcades_url, notice: 'Arcade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arcade
      @arcade = Arcade.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arcade_params
      params.require(:arcade).permit(:name, :price, :image, :order_id, :photo, :photo_cache, :design_id,component_ids:[])
    end
end
