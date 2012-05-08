class ProgramsController < ApplicationController
  respond_to :html

  expose(:program) 
  expose(:programs) { Program.all }

  def create
    if program.save
      flash[:success] = "Program created."
      respond_with(program)
    else 
      render :action => "new"
      flash[:error] = "Something went wrong.  Program was not created."
    end
  end
  
  def update
    program.save
    respond_with(program)
  end

  def destroy
    program.destroy
    respond_with(program)
  end
end
