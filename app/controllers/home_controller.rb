class HomeController < ApplicationController
  def index
    @users = User.all
    @projects = Project.all
    @option_cards = OptionCard.all
  end
end
