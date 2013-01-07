class StudentsController < ApplicationController
  
  def index
  	@students = Students.all
  end

  def new
  	@student = Student.new
  end

  def show
  	@student = Student.find(params[:id])
  end

  def edit
  	@student = Student.find(params[:id])
  end

  def create
  	@student = Student.create(params[:student])
  	if @student.save
  		redirect_to @student, notice: "El estudiante fu&#233 creado correctamente."
  	else
  		flash[:alert] = "El estudiante no se pudo crear."
  		render action: "new"
  	end
  end

  def destroy
  	@student = Student.find(params[:id])
  	if @student.destroy
  		redirect_to students_url, notice: "El estudiante fu&#233 eliminado correctamente."
  	else
  		redirect_to students_url, alert: "El estudiante no se pudo eliminar." 
  	end
  end

  def update
  	@student = Student.find(params[:id])
  	if @student.update_attributes(params[:student])
  		redirect_to @student, notice: "El estudiante fu&#233 actualizado correctamente."
  	else
  		flash[:alert] = "El estudiante no pude ser actualizado."
  		render action: "edit"
  	end
  end
end
