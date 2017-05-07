class PeopleController < ApplicationController
  def create
    @person = Person.new(people_params)
    if @person.save
      flash[:notice] = "New Person"
      redirect_to person_path(@person)
    else
      flash[:error] = "Not created"
      render :new
    end
  end

  def index
    @person = Person.all
  end

  def new
    @person = Person.new
  end

  def show
    @person = Person.find(params[:id])
  end

  def destroy
    @person=Person.find(params[:id]).destroy
    flash[:success] = "Character Deleted"
    redirect_to people_path
  end

  private

  def people_params
    params.require(:person).permit(:name, :description, :image)
  end

end
