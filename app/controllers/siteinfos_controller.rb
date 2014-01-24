class SiteinfosController < ApplicationController
    skip_before_filter :require_login, :only => :index
  # GET /siteinfos
  # GET /siteinfos.json
  def index
    @siteinfos = Siteinfo.limit(1)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @siteinfos }
    end
  end

  # GET /siteinfos/1
  # GET /siteinfos/1.json
  def show
    @siteinfo = Siteinfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @siteinfo }
    end
  end

  # GET /siteinfos/new
  # GET /siteinfos/new.json
  def new
    @siteinfo = Siteinfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @siteinfo }
    end
  end

  # GET /siteinfos/1/edit
  def edit
    @siteinfo = Siteinfo.find(params[:id])
  end

  # POST /siteinfos
  # POST /siteinfos.json
  def create
    @siteinfo = Siteinfo.new(params[:siteinfo])

    respond_to do |format|
      if @siteinfo.save
        format.html { redirect_to @siteinfo, notice: 'Siteinfo was successfully created.' }
        format.json { render json: @siteinfo, status: :created, location: @siteinfo }
      else
        format.html { render action: "new" }
        format.json { render json: @siteinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /siteinfos/1
  # PUT /siteinfos/1.json
  def update
    @siteinfo = Siteinfo.find(params[:id])

    respond_to do |format|
      if @siteinfo.update_attributes(params[:siteinfo])
        format.html { redirect_to @siteinfo, notice: 'Siteinfo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @siteinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /siteinfos/1
  # DELETE /siteinfos/1.json
  def destroy
    @siteinfo = Siteinfo.find(params[:id])
    @siteinfo.destroy

    respond_to do |format|
      format.html { redirect_to siteinfos_url }
      format.json { head :no_content }
    end
  end
end
