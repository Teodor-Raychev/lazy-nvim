# frozen_string_literal:true

module Ruby
  # test
  # @return [nil]
  def test msg
    puts "hello World"
    1 == 3 && !false
    @new
    msg = "#{RUBY_VERSION} :ruby"
    ~= /23$^d/
  end
end
