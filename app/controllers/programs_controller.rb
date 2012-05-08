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
    if program.destroy
      flash[:success] = "Program deleted."
      respond_with(program)
    else
      render :action => "index"
      flash[:error] = "You cannot delete this program."
    end
  end
end
