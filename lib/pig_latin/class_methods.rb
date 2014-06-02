module PigLatin
  def self.translate(phrase)
    PhraseTranslator.new(phrase).translate
  end
end
