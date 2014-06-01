require_relative '../../lib/pig_latin'

describe PigLatin::WordTranslator do

  def translate(phrase)
    PigLatin::WordTranslator.new(phrase).translate
  end

  it "translates words beginning with a" do
    translate("apple").should == "appleay"
  end

  it "translates words beginning with a" do
    translate("ear").should == "earay"
  end

  it "translates words beginning with p" do
    translate("pig").should == "igpay"
  end

  it "translates words beginning with k" do
    translate("koala").should == "oalakay"
  end

  it "translates words beginning with ch" do
    translate("chair").should == "airchay"
  end

  it "translates words beginning with qu" do
    translate("queen").should == "eenquay"
  end

  it "translates words beginning with consonant before qu" do
    translate("square").should == "aresquay"
  end

  it "translates words beginning with th" do
    translate("therapy").should == "erapythay"
  end

  it "translates words beginning with thr" do
    translate("thrush").should == "ushthray"
  end

  it "translates words beginning with sch" do
    translate("school").should == "oolschay"
  end

  it "translates words beginning with ye" do
    translate("yellow").should == "ellowyay"
  end

  it "translates words beginning with yt" do
    translate("yttria").should == "yttriaay"
  end

  it "translates words beginning with xe" do
    translate("xenon").should == "enonxay"
  end

  it "translates words beginning with xr" do
    translate("xray").should == "xrayay"
  end

end

