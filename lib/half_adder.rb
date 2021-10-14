# typed: strict

require "sorbet-runtime"
require "xor"
require "and"
require "state"
require "interfaces"

class HalfAdder < TwoInputTwoOutput
  extend T::Sig
  sig { override.params(inputs: [State, State]).returns([State, State]) }
  def self.eval(inputs)
    [
      Xor.eval(inputs)[0],
      And.eval(inputs)[0]
    ]
  end
end
