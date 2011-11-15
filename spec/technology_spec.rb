require "rubygems"
require "bundler/setup"
require File.expand_path(File.dirname(__FILE__) + '/../lib/technology.rb')

describe "states" do

  subject { Technology.new } 

  it "should start unapproved" do
    subject.current_state.to_s.should == "unapproved"
  end

  context "when approved" do
    it "should be approved" do
      subject.approve!
      subject.current_state.to_s.should == "approved"
    end
    it "should not be publishable when unapproved" do
      expect { subject.publish! }.to raise_error
    end
    it "can be set back to unapproved" do
      subject.approve!
      subject.unapprove!
      subject.current_state.to_s.should == "unapproved"
    end
  end

  context "when published" do
    it "should be be published" do
      subject.approve!
      subject.publish!
      subject.current_state.to_s.should == "published"
    end
  end

  
end
