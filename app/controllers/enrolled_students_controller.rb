class EnrolledStudentsController < ApplicationController
  load_and_authorize_resource

  def index
    @enrolled_students = EnrolledStudent.all
  end

  def show
    @enrolled_student = EnrolledStudent.find(params[:id])
  end

  def new
    @enrolled_student = EnrolledStudent.new
  end

  def create
    @enrolled_student = EnrolledStudent.new(params[:enrolled_student])
    if @enrolled_student.save
      redirect_to @enrolled_student, :notice => "Successfully created enrolled student."
    else
      render :action => 'new'
    end
  end

  def edit
    @enrolled_student = EnrolledStudent.find(params[:id])
  end

  def update
    @enrolled_student = EnrolledStudent.find(params[:id])
    if @enrolled_student.update_attributes(params[:enrolled_student])
      redirect_to @enrolled_student, :notice  => "Successfully updated enrolled student."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @enrolled_student = EnrolledStudent.find(params[:id])
    @enrolled_student.destroy
    redirect_to enrolled_students_url, :notice => "Successfully destroyed enrolled student."
  end
end
