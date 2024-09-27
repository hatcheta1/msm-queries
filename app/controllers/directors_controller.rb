class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list" })
  end

  def show
    @the_id = params.fetch("the_id")

    @director = Director.where({ :id => @the_id }).first

    render({ :template => "director_templates/details" })
  end

  def youngest
    @latest_dob = Director.maximum(:dob)
    @youngest_director = Director.where({ :dob => @latest_dob }).first

    render({ :template => "director_templates/youngest" })
  end

  def eldest
    @earliest_dob = Director.minimum(:dob)
    @eldest_director = Director.where({ :dob => @earliest_dob }).first

    render({ :template => "director_templates/eldest" })
  end
end
