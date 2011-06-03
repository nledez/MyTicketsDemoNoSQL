require 'spec_helper'

describe Note do
  before(:each) do
    @note = Note.new(name: "The first note", description: "Contain some text")
  end
  
  it "should be valid and saved" do
    @note.should be_valid
    @note.save
    @note.id.to_s.to_i.should be_integer
  end
  
  it "should be modified" do
    @note.name = "The second note"
    @note.description = "Contain another text"
    
    @note.name.should == "The second note"
    @note.description.should == "Contain another text"
  end
end
