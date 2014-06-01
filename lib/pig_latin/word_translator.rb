module PigLatin

  class WordTranslator
    def initialize(word)
      @word = word
    end


    def translate
      word_after_consonants + beginning_consonants + "ay"
    end

    private

    def word_after_consonants
      word.sub(/\A#{beginning_consonants}/, "")
    end

    def beginning_consonants
      @beginning_consonants ||= find_beginning_consonants
    end

    def find_beginning_consonants
      if word =~ /\A(xr|yt)/
        ""
      else
        word.slice(/\A(qu|[^aeiou])*/) || ""
      end
    end

    attr_reader :word
  end
end
