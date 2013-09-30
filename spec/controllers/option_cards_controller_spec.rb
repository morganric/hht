require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe OptionCardsController do

  # This should return the minimal set of attributes required to create a valid
  # OptionCard. As you add validations to OptionCard, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "key_partners" => "false" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OptionCardsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all option_cards as @option_cards" do
      option_card = OptionCard.create! valid_attributes
      get :index, {}, valid_session
      assigns(:option_cards).should eq([option_card])
    end
  end

  describe "GET show" do
    it "assigns the requested option_card as @option_card" do
      option_card = OptionCard.create! valid_attributes
      get :show, {:id => option_card.to_param}, valid_session
      assigns(:option_card).should eq(option_card)
    end
  end

  describe "GET new" do
    it "assigns a new option_card as @option_card" do
      get :new, {}, valid_session
      assigns(:option_card).should be_a_new(OptionCard)
    end
  end

  describe "GET edit" do
    it "assigns the requested option_card as @option_card" do
      option_card = OptionCard.create! valid_attributes
      get :edit, {:id => option_card.to_param}, valid_session
      assigns(:option_card).should eq(option_card)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new OptionCard" do
        expect {
          post :create, {:option_card => valid_attributes}, valid_session
        }.to change(OptionCard, :count).by(1)
      end

      it "assigns a newly created option_card as @option_card" do
        post :create, {:option_card => valid_attributes}, valid_session
        assigns(:option_card).should be_a(OptionCard)
        assigns(:option_card).should be_persisted
      end

      it "redirects to the created option_card" do
        post :create, {:option_card => valid_attributes}, valid_session
        response.should redirect_to(OptionCard.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved option_card as @option_card" do
        # Trigger the behavior that occurs when invalid params are submitted
        OptionCard.any_instance.stub(:save).and_return(false)
        post :create, {:option_card => { "key_partners" => "invalid value" }}, valid_session
        assigns(:option_card).should be_a_new(OptionCard)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        OptionCard.any_instance.stub(:save).and_return(false)
        post :create, {:option_card => { "key_partners" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested option_card" do
        option_card = OptionCard.create! valid_attributes
        # Assuming there are no other option_cards in the database, this
        # specifies that the OptionCard created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        OptionCard.any_instance.should_receive(:update_attributes).with({ "key_partners" => "false" })
        put :update, {:id => option_card.to_param, :option_card => { "key_partners" => "false" }}, valid_session
      end

      it "assigns the requested option_card as @option_card" do
        option_card = OptionCard.create! valid_attributes
        put :update, {:id => option_card.to_param, :option_card => valid_attributes}, valid_session
        assigns(:option_card).should eq(option_card)
      end

      it "redirects to the option_card" do
        option_card = OptionCard.create! valid_attributes
        put :update, {:id => option_card.to_param, :option_card => valid_attributes}, valid_session
        response.should redirect_to(option_card)
      end
    end

    describe "with invalid params" do
      it "assigns the option_card as @option_card" do
        option_card = OptionCard.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        OptionCard.any_instance.stub(:save).and_return(false)
        put :update, {:id => option_card.to_param, :option_card => { "key_partners" => "invalid value" }}, valid_session
        assigns(:option_card).should eq(option_card)
      end

      it "re-renders the 'edit' template" do
        option_card = OptionCard.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        OptionCard.any_instance.stub(:save).and_return(false)
        put :update, {:id => option_card.to_param, :option_card => { "key_partners" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested option_card" do
      option_card = OptionCard.create! valid_attributes
      expect {
        delete :destroy, {:id => option_card.to_param}, valid_session
      }.to change(OptionCard, :count).by(-1)
    end

    it "redirects to the option_cards list" do
      option_card = OptionCard.create! valid_attributes
      delete :destroy, {:id => option_card.to_param}, valid_session
      response.should redirect_to(option_cards_url)
    end
  end

end