require "rails_helper"

RSpec.describe AgentApplicationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/agent_applications").to route_to("agent_applications#index")
    end

    it "routes to #new" do
      expect(:get => "/agent_applications/new").to route_to("agent_applications#new")
    end

    it "routes to #show" do
      expect(:get => "/agent_applications/1").to route_to("agent_applications#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/agent_applications/1/edit").to route_to("agent_applications#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/agent_applications").to route_to("agent_applications#create")
    end

    it "routes to #update" do
      expect(:put => "/agent_applications/1").to route_to("agent_applications#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/agent_applications/1").to route_to("agent_applications#destroy", :id => "1")
    end

  end
end
