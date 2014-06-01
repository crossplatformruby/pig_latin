module PigLatin
  class PhraseTranslator
    def initialize(phrase)
      @phrase = phrase
    end

    def translate
      phrase.split(" ").map { |word| translate_word(word) }.join(" ")
    end

    private

    def translate_word(word)
      WordTranslator.new(word).translate
    end

    attr_reader :phrase
  end
end
