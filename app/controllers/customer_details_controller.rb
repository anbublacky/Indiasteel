class CustomerDetailsController < ApplicationController
  # GET /customer_details
  # GET /customer_details.xml
  def index
    @customer_details = CustomerDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @customer_details }
    end
  end

  # GET /customer_details/1
  # GET /customer_details/1.xml
  def show
    @customer_detail = CustomerDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @customer_detail }
    end
  end

  # GET /customer_details/new
  # GET /customer_details/new.xml
  def new
    @customer_detail = CustomerDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @customer_detail }
    end
  end

  # GET /customer_details/1/edit
  def edit
    @customer_detail = CustomerDetail.find(params[:id])
  end

  # POST /customer_details
  # POST /customer_details.xml
  def create
    @customer_detail = CustomerDetail.new(params[:customer_detail])

    respond_to do |format|
      if @customer_detail.save
        format.html { redirect_to(@customer_detail, :notice => 'Customer detail was successfully created.') }
        format.xml  { render :xml => @customer_detail, :status => :created, :location => @customer_detail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @customer_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /customer_details/1
  # PUT /customer_details/1.xml
  def update
    @customer_detail = CustomerDetail.find(params[:id])

    respond_to do |format|
      if @customer_detail.update_attributes(params[:customer_detail])
        format.html { redirect_to(@customer_detail, :notice => 'Customer detail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @customer_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_details/1
  # DELETE /customer_details/1.xml
  def destroy
    @customer_detail = CustomerDetail.find(params[:id])
    @customer_detail.destroy

    respond_to do |format|
      format.html { redirect_to(customer_details_url) }
      format.xml  { head :ok }
    end
  end
end
