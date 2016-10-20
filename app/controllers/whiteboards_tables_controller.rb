class WhiteboardsTablesController < ApplicationController
  before_action :set_whiteboards_table, only: [:show, :edit, :update, :destroy]

  # GET /whiteboards_tables
  # GET /whiteboards_tables.json
  def index
    @whiteboards_tables = WhiteboardsTable.all
  end

  # GET /whiteboards_tables/1
  # GET /whiteboards_tables/1.json
  def show
  end

  # GET /whiteboards_tables/new
  def new
    @whiteboards_table = WhiteboardsTable.new
  end

  # GET /whiteboards_tables/1/edit
  def edit
  end

  # POST /whiteboards_tables
  # POST /whiteboards_tables.json
  def create
    @whiteboards_table = WhiteboardsTable.new(whiteboards_table_params)

    respond_to do |format|
      if @whiteboards_table.save
        format.html { redirect_to @whiteboards_table, notice: 'Whiteboards table was successfully created.' }
        format.json { render :show, status: :created, location: @whiteboards_table }
      else
        format.html { render :new }
        format.json { render json: @whiteboards_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whiteboards_tables/1
  # PATCH/PUT /whiteboards_tables/1.json
  def update
    respond_to do |format|
      if @whiteboards_table.update(whiteboards_table_params)
        format.html { redirect_to @whiteboards_table, notice: 'Whiteboards table was successfully updated.' }
        format.json { render :show, status: :ok, location: @whiteboards_table }
      else
        format.html { render :edit }
        format.json { render json: @whiteboards_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whiteboards_tables/1
  # DELETE /whiteboards_tables/1.json
  def destroy
    @whiteboards_table.destroy
    respond_to do |format|
      format.html { redirect_to whiteboards_tables_url, notice: 'Whiteboards table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whiteboards_table
      @whiteboards_table = WhiteboardsTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whiteboards_table_params
      params.require(:whiteboards_table).permit(:room, :available, :quantity, :description, :privilege)
    end
end
