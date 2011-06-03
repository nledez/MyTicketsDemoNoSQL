require 'spec_helper'

describe Status do
  before(:each) do
    @status = Status.new(name: "New", description: "Just opened")
  end
  
  it "should be valid and saved" do
    @status.should be_valid
    @status.save
    @status.id.should be_integer
  end
  
  it "should be modified" do
    @status.name = "Open"
    @status.description = "Acknowledged"
    
    @status.name.should == "Open"
    @status.description.should == "Acknowledged"
  end
end
