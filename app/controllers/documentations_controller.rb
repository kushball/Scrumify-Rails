class DocumentationsController < ApplicationController
  load_and_authorize_resource
  
  # GET /documentations
  # GET /documentations.xml
  def index
    @documentations = Documentation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @documentations }
    end
  end

  # GET /documentations/1
  # GET /documentations/1.xml
  def show
    @documentation = Documentation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @documentation }
    end
  end

  # GET /documentations/new
  # GET /documentations/new.xml
  def new
    @documentation = Documentation.new
    @group = current_user.groups.first
    @user = current_user.id
    @custom_forms = CustomForm.where(:group_id => @group.id) 

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @documentation }
    end
  end

  # GET /documentations/1/edit
  def edit
    @documentation = Documentation.find(params[:id])
    @group = current_user.groups.first
    @user = current_user 
  end

  # POST /documentations
  # POST /documentations.xml
  def create
    @documentation = Documentation.new(params[:documentation])
    @documentation.build_data_fields 
    respond_to do |format|
      if @documentation.save
        #format.html { redirect_to(@documentation, :notice => 'Documentation was successfully created.') }
        format.html { redirect_to edit_documentation_path(@documentation) }
        format.xml  { render :xml => @documentation, :status => :created, :location => @documentation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @documentation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /documentations/1
  # PUT /documentations/1.xml
  def update
    @documentation = Documentation.find(params[:id])

    respond_to do |format|
      if @documentation.update_attributes(params[:documentation])
        format.html { redirect_to(@documentation, :notice => 'Documentation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @documentation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /documentations/1
  # DELETE /documentations/1.xml
  def destroy
    @documentation = Documentation.find(params[:id])
    @documentation.kill_data_fields
    @documentation.destroy

    respond_to do |format|
      format.html { redirect_to(documentations_url) }
      format.xml  { head :ok }
    end
  end
end
