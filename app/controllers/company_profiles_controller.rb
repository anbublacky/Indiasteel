class CompanyProfilesController < ApplicationController
  # GET /company_profiles
  # GET /company_profiles.xml
  def index
    @company_profiles = CompanyProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @company_profiles }
    end
  end

  # GET /company_profiles/1
  # GET /company_profiles/1.xml
  def show
    @company_profile = CompanyProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @company_profile }
    end
  end

  # GET /company_profiles/new
  # GET /company_profiles/new.xml
  def new
    @company_profile = CompanyProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @company_profile }
    end
  end

  # GET /company_profiles/1/edit
  def edit
    @company_profile = CompanyProfile.find(params[:id])
  end

  # POST /company_profiles
  # POST /company_profiles.xml
  def create
    @company_profile = CompanyProfile.new(params[:company_profile])

    respond_to do |format|
      if @company_profile.save
        format.html { redirect_to(@company_profile, :notice => 'Company profile was successfully created.') }
        format.xml  { render :xml => @company_profile, :status => :created, :location => @company_profile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @company_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /company_profiles/1
  # PUT /company_profiles/1.xml
  def update
    @company_profile = CompanyProfile.find(params[:id])

    respond_to do |format|
      if @company_profile.update_attributes(params[:company_profile])
        format.html { redirect_to(@company_profile, :notice => 'Company profile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @company_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /company_profiles/1
  # DELETE /company_profiles/1.xml
  def destroy
    @company_profile = CompanyProfile.find(params[:id])
    @company_profile.destroy

    respond_to do |format|
      format.html { redirect_to(company_profiles_url) }
      format.xml  { head :ok }
    end
  end
end
