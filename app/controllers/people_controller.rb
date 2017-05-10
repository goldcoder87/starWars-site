class PeopleController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def create
    @person = current_user.people.build(people_params)
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
    @person = current_user.people.build
  end

  def show
    @person = Person.find(params[:id])
  end

  def destroy
    @person = Person.find(params[:id]).destroy

    flash[:success] = "Character Deleted"
    redirect_to people_path
  end

  private

  def people_params
    params.require(:person).permit(:name, :description, :image)
  end

end
