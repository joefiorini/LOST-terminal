require 'numbers'

describe Numbers do
  it "should know the correct number sequence" do
    @numbers = Numbers.new
    @numbers.check_entry("4 8 15 16 23 42").should == "4 8 15 16 23 42"
  end
end
