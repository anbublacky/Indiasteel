class FollowUpsController < ApplicationController
  # GET /follow_ups
  # GET /follow_ups.xml
  def index
    @follow_ups = FollowUp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @follow_ups }
    end
  end

  # GET /follow_ups/1
  # GET /follow_ups/1.xml
  def show
    @follow_up = FollowUp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @follow_up }
    end
  end

  # GET /follow_ups/new
  # GET /follow_ups/new.xml
  def new
    @follow_up = FollowUp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @follow_up }
    end
  end

  # GET /follow_ups/1/edit
  def edit
    @follow_up = FollowUp.find(params[:id])
  end

  # POST /follow_ups
  # POST /follow_ups.xml
  def create
    @follow_up = FollowUp.new(params[:follow_up])

    respond_to do |format|
      if @follow_up.save
        format.html { redirect_to(@follow_up, :notice => 'Follow up was successfully created.') }
        format.xml  { render :xml => @follow_up, :status => :created, :location => @follow_up }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @follow_up.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /follow_ups/1
  # PUT /follow_ups/1.xml
  def update
    @follow_up = FollowUp.find(params[:id])

    respond_to do |format|
      if @follow_up.update_attributes(params[:follow_up])
        format.html { redirect_to(@follow_up, :notice => 'Follow up was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @follow_up.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /follow_ups/1
  # DELETE /follow_ups/1.xml
  def destroy
    @follow_up = FollowUp.find(params[:id])
    @follow_up.destroy

    respond_to do |format|
      format.html { redirect_to(follow_ups_url) }
      format.xml  { head :ok }
    end
  end
end
