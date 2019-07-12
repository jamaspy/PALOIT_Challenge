class PeopleController < ApplicationController
  def index
    @people = Person.all
    render json: @people
  end

  def show
    @person = Person.all
  end

  def new
    @people = Person.all
    @person = Person.new
  end

  def create
    @person = Person.new (
      params.require(:person).permit(:firstname, :lastname)
    )
      if @person.save
        redirect_to people_url
      else
        render 'new'
      end
   end
end