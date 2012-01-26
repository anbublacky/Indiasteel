class CompanyprofilesController < ApplicationController
  # GET /companyprofiles
  # GET /companyprofiles.xml
  def index
    @companyprofiles = Companyprofile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @companyprofiles }
    end
  end

  # GET /companyprofiles/1
  # GET /companyprofiles/1.xml
  def show
    @companyprofile = Companyprofile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @companyprofile }
    end
  end

  # GET /companyprofiles/new
  # GET /companyprofiles/new.xml
  def new
    @companyprofile = Companyprofile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @companyprofile }
    end
  end

  # GET /companyprofiles/1/edit
  def edit
    @companyprofile = Companyprofile.find(params[:id])
  end

  # POST /companyprofiles
  # POST /companyprofiles.xml
  def create
    @companyprofile = Companyprofile.new(params[:companyprofile])

    respond_to do |format|
      if @companyprofile.save
        format.html { redirect_to(@companyprofile, :notice => 'Companyprofile was successfully created.') }
        format.xml  { render :xml => @companyprofile, :status => :created, :location => @companyprofile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @companyprofile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /companyprofiles/1
  # PUT /companyprofiles/1.xml
  def update
    @companyprofile = Companyprofile.find(params[:id])

    respond_to do |format|
      if @companyprofile.update_attributes(params[:companyprofile])
        format.html { redirect_to(@companyprofile, :notice => 'Companyprofile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @companyprofile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /companyprofiles/1
  # DELETE /companyprofiles/1.xml
  def destroy
    @companyprofile = Companyprofile.find(params[:id])
    @companyprofile.destroy

    respond_to do |format|
      format.html { redirect_to(companyprofiles_url) }
      format.xml  { head :ok }
    end
  end
end
