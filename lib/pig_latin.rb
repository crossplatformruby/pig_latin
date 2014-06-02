if defined?(Motion::Project::Config)
  # First we redefine require to build a list of files to be compiled later
  def rubymotion_require(filename)
    @files_to_require ||= []
    @files_to_require << filename
  end

  # Let's keep track of the require so we can redefine it back later
  alias :old_require :require
  alias :require :rubymotion_require
end

# Now we require files as usual

require "pig_latin/version"
require "pig_latin/word_translator"
require "pig_latin/phrase_translator"
# We moved class method declarations to a separate file
# otherwise we would need to require this file as well
# and we would get warnings in RubyMotion (as we can't require at runtime).
require "pig_latin/class_methods"

if defined?(Motion::Project::Config)
  # Revert normal require
  alias :require :old_require

  Motion::Project::App.setup do |app|
    # prepare full paths of files that will be compiled
    paths_to_require = @files_to_require.map do |file|
      File.join(File.dirname(__FILE__), file + ".rb")
    end

    # add paths in correct order
    app.files.unshift(*paths_to_require)
  end
end


# We don't actually require anything in Opal.rb at this time
# We just need let it know where to look for files when we require it in Opal.rb.
if defined?(Opal) && defined?(File)
  Opal.append_path File.expand_path('.', File.dirname(__FILE__))
end
