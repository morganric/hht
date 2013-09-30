class OptionCardsController < ApplicationController

  load_and_authorize_resource
  # GET /option_cards
  # GET /option_cards.json
  def index
    @option_cards = OptionCard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @option_cards }
    end
  end

  # GET /option_cards/1
  # GET /option_cards/1.json
  def show
    @option_card = OptionCard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @option_card }
    end
  end

  # GET /option_cards/new
  # GET /option_cards/new.json
  def new
    @option_card = OptionCard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @option_card }
    end
  end

  # GET /option_cards/1/edit
  def edit
    @option_card = OptionCard.find(params[:id])
  end

  # POST /option_cards
  # POST /option_cards.json
  def create
    @option_card = OptionCard.new(params[:option_card])
    @option_card.user = current_user

    respond_to do |format|
      if @option_card.save
        format.html { redirect_to @option_card, notice: 'Option card was successfully created.' }
        format.json { render json: @option_card, status: :created, location: @option_card }
      else
        format.html { render action: "new" }
        format.json { render json: @option_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /option_cards/1
  # PUT /option_cards/1.json
  def update
    @option_card = OptionCard.find(params[:id])

    respond_to do |format|
      if @option_card.update_attributes(params[:option_card])
        format.html { redirect_to @option_card, notice: 'Option card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @option_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_cards/1
  # DELETE /option_cards/1.json
  def destroy
    @option_card = OptionCard.find(params[:id])
    @option_card.destroy

    respond_to do |format|
      format.html { redirect_to option_cards_url }
      format.json { head :no_content }
    end
  end
end
