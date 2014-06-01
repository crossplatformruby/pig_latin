require "pig_latin/version"
require "pig_latin/word_translator"
require "pig_latin/phrase_translator"

module PigLatin
  def self.translate(phrase)
    PhraseTranslator.new(phrase).translate
  end
end

# We don't actually require anything in Opal.rb at this time
# We just need let it know where to look for files when we require it in Opal.rb.
if defined?(Opal) && defined?(File)
  Opal.append_path File.expand_path('.', File.dirname(__FILE__))
end
