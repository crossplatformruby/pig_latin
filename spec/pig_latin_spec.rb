require_relative '../lib/pig_latin'

describe PigLatin::WordTranslator do

  def translate(phrase)
    PigLatin.translate(phrase)
  end

  it "translates empty strings" do
    translate("").should == ""
  end

  it "translates words" do
    translate("bar").should == "arbay"
  end

  it "translates phrases" do
    translate("quick brown fox").should == "ickquay ownbray oxfay"
  end
end
