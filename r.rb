# frozen_string_literal:true

# Syntax highlighting test:

# PERF: change this to be speedy.
# HACK: this looks funky.
# TODO: this is a ToDo!
# NOTE: this is a note!
# FIX: this need fixing!
# WARNING: this is dangerous!
module Ruby
  REGEXP = /^[a-zA-Z0-9_.-]*$/.freeze
  # test class
  #
  # @param msg [String]
  # @return [nil]
  def test(msg)
    Kernel.send(:p, "hello World #{msg}")
    1 == 3 && false
    @new = "#{RUBY_VERSION} :ruby"
    REGEXP =~ @new
  end
end
