require "spec_helper"

describe OptionCardsController do
  describe "routing" do

    it "routes to #index" do
      get("/option_cards").should route_to("option_cards#index")
    end

    it "routes to #new" do
      get("/option_cards/new").should route_to("option_cards#new")
    end

    it "routes to #show" do
      get("/option_cards/1").should route_to("option_cards#show", :id => "1")
    end

    it "routes to #edit" do
      get("/option_cards/1/edit").should route_to("option_cards#edit", :id => "1")
    end

    it "routes to #create" do
      post("/option_cards").should route_to("option_cards#create")
    end

    it "routes to #update" do
      put("/option_cards/1").should route_to("option_cards#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/option_cards/1").should route_to("option_cards#destroy", :id => "1")
    end

  end
end
