class DataFieldsController < ApplicationController
  load_and_authorize_resource

  # GET /data_fields
  # GET /data_fields.xml
  def index
    @data_fields = DataField.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @data_fields }
    end
  end

  # GET /data_fields/1
  # GET /data_fields/1.xml
  def show
    @data_field = DataField.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @data_field }
    end
  end

  # GET /data_fields/new
  # GET /data_fields/new.xml
  def new
    @data_field = DataField.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @data_field }
    end
  end

  # GET /data_fields/1/edit
  def edit
    @data_field = DataField.find(params[:id])
  end

  # POST /data_fields
  # POST /data_fields.xml
  def create
    @data_field = DataField.new(params[:data_field])

    respond_to do |format|
      if @data_field.save
        format.html { redirect_to(@data_field, :notice => 'Data field was successfully created.') }
        format.xml  { render :xml => @data_field, :status => :created, :location => @data_field }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @data_field.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /data_fields/1
  # PUT /data_fields/1.xml
  def update
    @data_field = DataField.find(params[:id])

    respond_to do |format|
      if @data_field.update_attributes(params[:data_field])
        format.html { redirect_to(@data_field, :notice => 'Data field was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @data_field.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /data_fields/1
  # DELETE /data_fields/1.xml
  def destroy
    @data_field = DataField.find(params[:id])
    @data_field.destroy

    respond_to do |format|
      format.html { redirect_to(data_fields_url) }
      format.xml  { head :ok }
    end
  end
end
