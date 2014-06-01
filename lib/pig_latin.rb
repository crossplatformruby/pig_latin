require "pig_latin/version"
require "pig_latin/word_translator"
require "pig_latin/phrase_translator"

module PigLatin
  def self.translate(phrase)
    PhraseTranslator.new(phrase).translate
  end
end
