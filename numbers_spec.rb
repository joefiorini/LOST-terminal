require 'numbers'

describe Numbers do
  it "should know the correct number sequence" do
    @numbers = Numbers.new
    @numbers.check_entry("4 8 15 16 23 42").should == true
  end

  it "should alert when given the wrong number sequence" do
    @numbers = Numbers.new
    @numbers.check_entry('3 5 12 63 623').should == false
  end

  it "should know the correct number sequence with wrong whitespacing" do
    @numbers = Numbers.new
    @numbers.check_entry("4 8 1 5 16 23 42").should == false
  end
end
