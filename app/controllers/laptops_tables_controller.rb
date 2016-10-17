class LaptopsTablesController < ApplicationController
  before_action :set_laptops_table, only: [:show, :edit, :update, :destroy]

  # GET /laptops_tables
  # GET /laptops_tables.json
  def index
    @laptops_tables = LaptopsTable.all
  end

  # GET /laptops_tables/1
  # GET /laptops_tables/1.json
  def show
  end

  # GET /laptops_tables/new
  def new
    @laptops_table = LaptopsTable.new
  end

  # GET /laptops_tables/1/edit
  def edit
  end

  # POST /laptops_tables
  # POST /laptops_tables.json
  def create
    @laptops_table = LaptopsTable.new(laptops_table_params)

    respond_to do |format|
      if @laptops_table.save
        format.html { redirect_to @laptops_table, notice: 'Laptops table was successfully created.' }
        format.json { render :show, status: :created, location: @laptops_table }
      else
        format.html { render :new }
        format.json { render json: @laptops_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laptops_tables/1
  # PATCH/PUT /laptops_tables/1.json
  def update
    respond_to do |format|
      if @laptops_table.update(laptops_table_params)
        format.html { redirect_to @laptops_table, notice: 'Laptops table was successfully updated.' }
        format.json { render :show, status: :ok, location: @laptops_table }
      else
        format.html { render :edit }
        format.json { render json: @laptops_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laptops_tables/1
  # DELETE /laptops_tables/1.json
  def destroy
    @laptops_table.destroy
    respond_to do |format|
      format.html { redirect_to laptops_tables_url, notice: 'Laptops table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laptops_table
      @laptops_table = LaptopsTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def laptops_table_params
      params.require(:laptops_table).permit(:room, :available, :quantity, :description, :privilege)
    end
end
