require_relative '../../lib/pig_latin'

describe PigLatin::PhraseTranslator do

  def translate(phrase)
    PigLatin::PhraseTranslator.new(phrase).translate
  end

  it "translates words beginning with a" do
    translate("apple").should == "appleay"
  end

  it "translates phrase" do
    translate("quick fast run").should == "ickquay astfay unray"
  end

end
