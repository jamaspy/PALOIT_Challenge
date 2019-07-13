class PeopleController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @people = Person.all
    respond_to do |format| 
      format.html # index.html.erb 
      format.json { render :json => @people, :methods => [:asciify, :binarify, :countZeros] } 
    end
  end

  def show
    @person = Person.all
    render json: @person
  end

  def new
    @people = Person.all
    @person = Person.new
  end

  def create
  @person = Person.new
  @person.firstname = params[:firstname]
  @person.lastname = params[:lastname]
  
    if @person.save
      redirect_to people_url
    else
      render 'new'
    end
 end
   
end