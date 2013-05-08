class DataFieldStepsController < ApplicationController
  load_and_authorize_resource

  # GET /data_field_steps
  # GET /data_field_steps.xml
  def index
    @data_field_steps = DataFieldStep.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @data_field_steps }
    end
  end

  # GET /data_field_steps/1
  # GET /data_field_steps/1.xml
  def show
    @data_field_step = DataFieldStep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @data_field_step }
    end
  end

  # GET /data_field_steps/new
  # GET /data_field_steps/new.xml
  def new
    @data_field_step = DataFieldStep.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @data_field_step }
    end
  end

  # GET /data_field_steps/1/edit
  def edit
    @data_field_step = DataFieldStep.find(params[:id])
  end

  # POST /data_field_steps
  # POST /data_field_steps.xml
  def create
    @data_field_step = DataFieldStep.new(params[:data_field_step])

    respond_to do |format|
      if @data_field_step.save
        format.html { redirect_to(@data_field_step, :notice => 'Data field step was successfully created.') }
        format.xml  { render :xml => @data_field_step, :status => :created, :location => @data_field_step }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @data_field_step.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /data_field_steps/1
  # PUT /data_field_steps/1.xml
  def update
    @data_field_step = DataFieldStep.find(params[:id])

    respond_to do |format|
      if @data_field_step.update_attributes(params[:data_field_step])
        format.html { redirect_to(@data_field_step, :notice => 'Data field step was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @data_field_step.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /data_field_steps/1
  # DELETE /data_field_steps/1.xml
  def destroy
    @data_field_step = DataFieldStep.find(params[:id])
    @data_field_step.destroy

    respond_to do |format|
      format.html { redirect_to(data_field_steps_url) }
      format.xml  { head :ok }
    end
  end
end
