require './reverse'

describe "reverse_sentence" do
  it "should reverse the words of an input sentence" do
    input = "One Two Three"
    reverse_sentence(input).should eq("Three Two One")
  end
end


describe "empty_line?" do
  it "should whether or not a line is empty" do
    empty_lines = [" ", "       ", ""]
    lines = ["testing this", "testing That"]

    empty_lines.each do |line|
      empty_line?(line).should be_true
    end

    lines.each do |line|
      empty_line?(line).should be_false
    end
  end
end
