require 'spec_helper'

describe "CarToCat::Cli" do

  before(:each) do
    @cli = CarToCat::Cli.new
  end

  describe "running bin/car_to_cat" do
    before(:each) do
      @input  = StringIO.new("Cars have 4 wheels and go vroom!")
      @output = StringIO.new
      File.stub(:new).and_return(@input, @output)
    end

    it "should catify the file" do
      ARGV.clear.concat(['infile', 'outfile'])
      eval File.read(File.join(File.dirname(__FILE__), '..', 'bin', 'car_to_cat'))
      @output.string.should eql("Cats have 4 wheels and go vroom!")
    end
  end

end