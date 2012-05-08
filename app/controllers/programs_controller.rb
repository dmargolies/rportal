class ProgramsController < ApplicationController
  expose(:program) 
  expose(:programs) { Program.all }

  def create
    program.save
    respond_with(program)
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
