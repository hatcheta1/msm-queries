class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list" })
  end

  def show
    @the_id = params.fetch("the_id")

    @director = Director.where({ :id => @the_id }).first

    render({ :template => "director_templates/details" })
  end
end
