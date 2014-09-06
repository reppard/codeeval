require 'rspec'
require './discount_offers'

describe "get_letters" do
  it "should return only the letters from a string" do
    get_letters("iPad 2 - 4-pack").should eql("iPadpack")
    get_letters("Girl Scouts Thin Mints").should eql("GirlScoutsThinMints")
    get_letters("Magazine Subscriptions - 40 pack").should eql("MagazineSubscriptionspack")
  end
end

describe "get_vowels" do
  it "should return the vowels from a given string" do
    get_vowels("Owl").should eql("O")
    get_vowels("Cow Turd").should eql("ou")
  end
end

describe "get_cons" do
  it "should return the vowels from a given string" do
    get_cons("Owl").should eql("wl")
    get_cons("Cow Turd").should eql("CwTrd")
  end
end

describe "even_letter_count?" do
  it "should return true if letter count is even" do
    even_letter_count?("Test This").should be_true
  end

  it "should return false if letter count is odd" do
    even_letter_count?("False Duderr!!!").should be_false
  end
end

describe "get_ss" do
  describe "product letter count is even" do
    it "should return (number of vowels in customers name * 1.5)" do
      get_ss("Sand Dune", "Reppard Walker").should eql(6.0)
    end
  end

  describe "product letter count is odd" do
    it "should return number of consonants in customers name" do
      get_ss("Sand Dunes", "Reppard Walker").should eql(9.0)
    end
  end

  describe "product letter count is even and share common factors with customer name" do
    it "should return (number of vowels in customers name * 1.5) * 1.5" do
      get_ss("AsDfGaSdFd", "FFFFFAAAAAFFFFFAAAAA").should eql(22.5)
    end
  end

  describe "product letter count is odd and share common factors with customer name" do
    it "should return (number of consonants in customers name) * 1.5" do
      get_ss("ASDFASDFA", "Reppard Mark Walkers").should eql(19.5)
    end
  end
end

describe "common_factors" do
  it "should return the common factors of 2 given numbers(excluding 1)" do
    common_factors?(20,25).should eql(true)
    common_factors?(15,30).should eql(true)
    common_factors?(3,4).should eql(false)
    common_factors?(9,12).should eql(true)
  end
end
