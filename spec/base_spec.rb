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

    it "should match plural instances" do
      expect(subject.catify("cars")).to eq("cats")
    end
  end

  describe "when handling a file" do
    before(:each) do
      @input_file = StringIO.new %{
        In 2006, John Lasseter spoke about how they worked hard to make the \n
        animation believable, saying: \"It took many months of trial and \n
        error, and practicing test animation, to figure out how each car \n
        moves and how their world works. Our supervising animators, Doug \n
        Sweetland and Scott Clark, and the directing animators, Bobby Podesta \n
        and James Ford Murphy, did an amazing job working with the animation \n
        team to determine the unique movements for each character based on \n
        its age and the type of car it was. Some cars are like sports cars \n
        and they\'re much tighter in their suspension. Others are older \n
        \'50s cars that are a lot looser and have more bounce to them. We \n
        wanted to get that authenticity in there but also to make sure each \n
        car had a unique personality. We also wanted each animator to be \n
        able to put some of themself in the character and give it their own \n
        spin. Every day in dailies, it was so much fun because we would see \n
        things that we had never seen in our lives. The world of cars came \n
        alive in a believable and unexpected way.\"[19]
      }
      @output_file = StringIO.new
    end

    it "should output a catified file" do
      subject.convert(@input_file, @output_file)
      @output_file.should eq(%{
        In 2006, John Lasseter spoke about how they worked hard to make the \n
        animation believable, saying: \"It took many months of trial and \n
        error, and practicing test animation, to figure out how each cat \n
        moves and how their world works. Our supervising animators, Doug \n
        Sweetland and Scott Clark, and the directing animators, Bobby Podesta \n
        and James Ford Murphy, did an amazing job working with the animation \n
        team to determine the unique movements for each character based on \n
        its age and the type of cat it was. Some cats are like sports cats \n
        and they\'re much tighter in their suspension. Others are older \n
        \'50s cats that are a lot looser and have more bounce to them. We \n
        wanted to get that authenticity in there but also to make sure each \n
        cat had a unique personality. We also wanted each animator to be \n
        able to put some of themself in the character and give it their own \n
        spin. Every day in dailies, it was so much fun because we would see \n
        things that we had never seen in our lives. The world of cats came \n
        alive in a believable and unexpected way.\"[19]
      })
    end
  end
end