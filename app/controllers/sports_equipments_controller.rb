class SportsEquipmentsController < ApplicationController
  before_action :set_sports_equipment, only: [:show, :edit, :update, :destroy]

  def index
    # @sports_equipments = SportsEquipment.all
    if params[:query].present?
      # sql_query = "category ILIKE :query OR size ILIKE :query"
      # @sports_equipments = SportsEquipment.where(sql_query, query: "%#{params[:query]}%")
      @sports_equipments = SportsEquipment.search_by_category_and_size(params[:query])
    else
      @sports_equipments = SportsEquipment.all
    end
  end

  def show; end

  def new
    @sports_equipment = SportsEquipment.new
  end

  def create
    @sports_equipment = SportsEquipment.new(sports_equipment_params)
    @sports_equipment.user = current_user
    if @sports_equipment.save
      redirect_to sports_equipment_path(@sports_equipment)
    else
      render :new
    end
  end

  def edit; end

  def update
    @sports_equipment.update(sports_equipment_params)
    redirect_to sports_equipments_path
  end

  def destroy
    @sports_equipment.destroy
    redirect_to sports_equipments_path(@sports_equipment)
  end

  private

  def set_sports_equipment
    @sports_equipment = SportsEquipment.find(params[:id])
  end

  def sports_equipment_params
    params.require(:sports_equipment).permit(:category, :size, :price, :availability, :condition)
  end
end
