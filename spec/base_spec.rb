require 'spec_helper'

describe "CarToCat::Base" do

  subject { CarToCat::Base }

  describe "when converting" do
    it "should change car to cat" do
      expect(subject.catify("car")).to eq("cat")
    end

    it "should replace all instances of car" do
      expect(subject.catify("car car car")).to eq("cat cat cat")
    end

    it "should not change care to cate" do
      expect(subject.catify("care")).to_not eq("cate")
    end

    it "should leave intact capitalization" do
      expect(subject.catify("CAR")).to eq("CAT")
    end
  end

end