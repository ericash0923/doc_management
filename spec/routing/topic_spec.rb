require "rails_helper"

RSpec.describe "routes for Topic resources", :type => :routing do
  it "no new route" do
    expect(get: "/topics/new").not_to route_to(controller: "topics", action: "new")
    # doesnt work expect(:get => "topics/new").not_to be_routable
  end
  
  it "no edit" do
    # expect(get: "/topics/1/edit").not_to route_to(controller: "topics", action: "edit", id: "1")
    expect(:get => "topics/1/edit").not_to be_routable
  end
  
   it "no delete" do
    # expect(delete: "/topics/1").not_to route_to(controller: "topics", action: "destroy", id: "1")
    expect(:delete => "topics/1/").not_to be_routable
  end
end