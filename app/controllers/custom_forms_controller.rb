class CustomFormsController < ApplicationController
  load_and_authorize_resource
  
  # GET /custom_forms
  # GET /custom_forms.xml
  def index
    @group = current_user.groups.first
    @custom_forms = CustomForm.all

    respond_to do |format|
     format.html # index.html.erb
     format.xml  { render :xml => @custom_forms }
    end
  end

  # GET /custom_forms/1
  # GET /custom_forms/1.xml
  def show
    @custom_form = CustomForm.find(params[:id])
    @custom_fields = @custom_form.custom_fields
    @documentations = @custom_form.documentations
    @documentations_div ="custom_form" + @custom_form.id.to_s + "_documentations"
    @custom_fields_div ="custom_form" + @custom_form.id.to_s + "_custom_fields"
    @group = @custom_form.group
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @custom_form }
    end
  end

  # GET /custom_forms/new
  # GET /custom_forms/new.xml
  def new
    @custom_form = CustomForm.new
    @group = current_user.groups.first
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @custom_form }
    end
  end

  # GET /custom_forms/1/edit
  def edit
    @custom_form = CustomForm.find(params[:id])
    @group = current_user.groups.first
  end

  # POST /custom_forms
  # POST /custom_forms.xml
  def create
    @custom_form = CustomForm.new(params[:custom_form])
    @group = current_user.groups.first
    respond_to do |format|
      if @custom_form.save
        format.html { redirect_to(@custom_form, :notice => 'Custom form was successfully created.') }
        format.xml  { render :xml => @custom_form, :status => :created, :location => @custom_form }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @custom_form.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /custom_forms/1
  # PUT /custom_forms/1.xml
  def update
    @custom_form = CustomForm.find(params[:id])
    respond_to do |format|
      if @custom_form.update_attributes(params[:custom_form])
        format.html { redirect_to(@custom_form, :notice => 'Custom form was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @custom_form.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_forms/1
  # DELETE /custom_forms/1.xml
  def destroy
    @custom_form = CustomForm.find(params[:id])
    @custom_form.destroy
    respond_to do |format|
      format.html { redirect_to(custom_forms_url) }
      format.xml  { head :ok }
    end
  end
end
