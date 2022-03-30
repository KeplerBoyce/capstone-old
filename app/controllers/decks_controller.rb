include ApplicationHelper

class DecksController < ApplicationController

  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def study
    @deck = Deck.find(params[:deck_id])
  end

  def new
    @deck = Deck.new
    @deck.cards.build
  end

  def create
    @deck = Deck.new(deck_params
      .merge(user_id: current_user.id)
      .merge(creator: current_user.username))

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

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy

    redirect_to root_path, status: :see_other
  end

  def save
    @deck = Deck.find(params[:deck_id])
    current_user.saves.build({deck_id: @deck.id})
    current_user.save
    redirect_to current_user
  end

  def unsave
    @deck = Deck.find(params[:deck_id])
    current_user.saves.destroy(Save.find_by(deck_id: @deck.id))
    current_user.save
    redirect_to current_user
  end

  private
  
  def deck_params
    params.require(:deck).permit(:title, :description, :user_id,
      {cards_attributes: [:front, :back, :_destroy, :id]})
  end
end
