require 'spec_helper'

describe Ticket do
  before(:each) do
    @status = Status.new(name: "New", description: "Just opened")
    @status.save
    @ticket = Ticket.new(name: "Breizhcamp", description: "Prepare a demo application", status_id: @status.id)
  end
  
  it "should be valid and saved" do
    @ticket.should be_valid
    @ticket.save
    @ticket.id.should be_integer
  end
  
  it "should be modified" do
    @ticket.name = "NoSQL"
    @ticket.description = "Read some doc about NoSQL DB :)"
    
    @ticket.name.should == "NoSQL"
    @ticket.description.should == "Read some doc about NoSQL DB :)"
  end
end
