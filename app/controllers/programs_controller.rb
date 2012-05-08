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
    if program.save
      flash[:success] = "Program updated."
      respond_with(program)
    else
      render :action => "edit"
      flash[:error] = "Something went wrong.  Program was not updated."
    end
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
