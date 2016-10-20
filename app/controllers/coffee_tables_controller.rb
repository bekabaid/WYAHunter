class CoffeeTablesController < ApplicationController
  before_action :set_coffee_table, only: [:show, :edit, :update, :destroy]

  # GET /coffee_tables
  # GET /coffee_tables.json
  def index
    @coffee_tables = CoffeeTable.all
  end

  # GET /coffee_tables/1
  # GET /coffee_tables/1.json
  def show
  end

  # GET /coffee_tables/new
  def new
    @coffee_table = CoffeeTable.new
  end

  # GET /coffee_tables/1/edit
  def edit
  end

  # POST /coffee_tables
  # POST /coffee_tables.json
  def create
    @coffee_table = CoffeeTable.new(coffee_table_params)

    respond_to do |format|
      if @coffee_table.save
        format.html { redirect_to @coffee_table, notice: 'Coffee table was successfully created.' }
        format.json { render :show, status: :created, location: @coffee_table }
      else
        format.html { render :new }
        format.json { render json: @coffee_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coffee_tables/1
  # PATCH/PUT /coffee_tables/1.json
  def update
    respond_to do |format|
      if @coffee_table.update(coffee_table_params)
        format.html { redirect_to @coffee_table, notice: 'Coffee table was successfully updated.' }
        format.json { render :show, status: :ok, location: @coffee_table }
      else
        format.html { render :edit }
        format.json { render json: @coffee_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coffee_tables/1
  # DELETE /coffee_tables/1.json
  def destroy
    @coffee_table.destroy
    respond_to do |format|
      format.html { redirect_to coffee_tables_url, notice: 'Coffee table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coffee_table
      @coffee_table = CoffeeTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coffee_table_params
      params.require(:coffee_table).permit(:room, :available, :description, :privilege)
    end
end
