class DecksController < ApplicationController

  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def new
    @deck = Deck.new
    @deck.cards.build
  end

  def create
    @deck = Deck.new(deck_params)

    if @deck.save
      redirect_to @deck
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
    @deck = Deck.find(params[:id])
  end

  def update
    @deck = Deck.find(params[:id])

    if @deck.update(deck_params)
      redirect_to @deck
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def deck_params
      params.require(:deck).permit(:title, {cards_attributes: [:front, :back, :_destroy, :id]})
    end
end
