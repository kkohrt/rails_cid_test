# frozen_string_literal: true

class BodySitesController < ApplicationController
  before_action :set_body_site, only: %i[ show edit update destroy ]

  # GET /body_sites or /body_sites.json
  def index
    @body_sites = BodySite.all
  end

  # GET /body_sites/1 or /body_sites/1.json
  def show
  end

  # GET /body_sites/new
  def new
    @body_site = BodySite.new
  end

  # GET /body_sites/1/edit
  def edit
  end

  # POST /body_sites or /body_sites.json
  def create
    @body_site = BodySite.new(body_site_params)

    respond_to do |format|
      if @body_site.save
        format.html { redirect_to @body_site, notice: 'Body site was successfully created.' }
        format.json { render :show, status: :created, location: @body_site }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @body_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /body_sites/1 or /body_sites/1.json
  def update
    respond_to do |format|
      if @body_site.update(body_site_params)
        format.html { redirect_to @body_site, notice: 'Body site was successfully updated.' }
        format.json { render :show, status: :ok, location: @body_site }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @body_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /body_sites/1 or /body_sites/1.json
  def destroy
    @body_site.destroy
    respond_to do |format|
      format.html { redirect_to body_sites_url, notice: 'Body site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_body_site
      @body_site = BodySite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def body_site_params
      params.require(:body_site).permit(:identifier, :name, :region)
    end
end
