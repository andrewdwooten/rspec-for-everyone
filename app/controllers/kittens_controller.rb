class KittensController < ApplicationController

  def index
    @kittens = Kitten.all
  end

  def destroy_all
    Kitten.cats_in_a_blender
    render :index
  end
end
