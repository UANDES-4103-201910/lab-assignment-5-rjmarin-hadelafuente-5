class TicketZonesController < ApplicationController
  before_action :set_ticket_zone, only: [:show, :edit, :update, :destroy]

  # GET /ticket_zones
  # GET /ticket_zones.json
  def index
    @ticket_zones = TicketZone.all
  end

  # GET /ticket_zones/1
  # GET /ticket_zones/1.json
  def show
  end

  # GET /ticket_zones/new
  def new
    @ticket_zone = TicketZone.new
  end

  # GET /ticket_zones/1/edit
  def edit
  end

  # POST /ticket_zones
  # POST /ticket_zones.json
  def create
    @ticket_zone = TicketZone.new(ticket_zone_params)

    respond_to do |format|
      if @ticket_zone.save
        format.html { redirect_to @ticket_zone, notice: 'Ticket zone was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_zone }
      else
        format.html { render :new }
        format.json { render json: @ticket_zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_zones/1
  # PATCH/PUT /ticket_zones/1.json
  def update
    respond_to do |format|
      if @ticket_zone.update(ticket_zone_params)
        format.html { redirect_to @ticket_zone, notice: 'Ticket zone was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_zone }
      else
        format.html { render :edit }
        format.json { render json: @ticket_zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_zones/1
  # DELETE /ticket_zones/1.json
  def destroy
    @ticket_zone.destroy
    respond_to do |format|
      format.html { redirect_to ticket_zones_url, notice: 'Ticket zone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_zone
      @ticket_zone = TicketZone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_zone_params
      params.fetch(:ticket_zone, {})
    end
end
