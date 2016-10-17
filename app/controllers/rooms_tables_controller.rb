class RoomsTablesController < ApplicationController
  before_action :set_rooms_table, only: [:show, :edit, :update, :destroy]

  # GET /rooms_tables
  # GET /rooms_tables.json
  def index
    @rooms_tables = RoomsTable.all
  end

  # GET /rooms_tables/1
  # GET /rooms_tables/1.json
  def show
  end

  # GET /rooms_tables/new
  def new
    @rooms_table = RoomsTable.new
  end

  # GET /rooms_tables/1/edit
  def edit
  end

  # POST /rooms_tables
  # POST /rooms_tables.json
  def create
    @rooms_table = RoomsTable.new(rooms_table_params)

    respond_to do |format|
      if @rooms_table.save
        format.html { redirect_to @rooms_table, notice: 'Rooms table was successfully created.' }
        format.json { render :show, status: :created, location: @rooms_table }
      else
        format.html { render :new }
        format.json { render json: @rooms_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms_tables/1
  # PATCH/PUT /rooms_tables/1.json
  def update
    respond_to do |format|
      if @rooms_table.update(rooms_table_params)
        format.html { redirect_to @rooms_table, notice: 'Rooms table was successfully updated.' }
        format.json { render :show, status: :ok, location: @rooms_table }
      else
        format.html { render :edit }
        format.json { render json: @rooms_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms_tables/1
  # DELETE /rooms_tables/1.json
  def destroy
    @rooms_table.destroy
    respond_to do |format|
      format.html { redirect_to rooms_tables_url, notice: 'Rooms table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rooms_table
      @rooms_table = RoomsTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rooms_table_params
      params.require(:rooms_table).permit(:room, :available, :quantity, :description, :privilege)
    end
end
