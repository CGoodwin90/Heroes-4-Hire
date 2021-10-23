class ReviewsController < ApplicationController
  before_action :set_superhero, only: [:new, :create]

  def new
    @superhero = Superhero.find(params[:superhero_id])
    @review = Review.new
  end

  def create
    @superhero = Superhero.find(params[:superhero_id])
    @review = Review.new(review_params)
    @review.superhero = @superhero
      if @review.save
        redirect_to superhero_path(@superhero)
      else
        render 'superheroes/show'
      end
    end

    private

    def review_params
      params.require(:review).permit(:content)
    end

    def set_superhero
      @superhero = Superhero.find(params[:superhero_id])
    end
end
