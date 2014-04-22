require 'spec_helper'

describe "CarToCat::Base" do

  subject { CarToCat::Base }

  describe "when converting" do
    it "should change car to cat" do
      expect(subject.catify("car")).to eq("cat")
    end
  end

end