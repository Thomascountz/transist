# typed: strict

require "sorbet-runtime"
require "and"
require "or"
require "nand"
require "state"
require "interfaces"

class Xor < TwoInputOneOutput
  extend T::Sig
  sig { override.params(inputs: [State, State]).returns([State]) }
  def self.eval(inputs)
    And.eval([
      Or.eval(inputs)[0],
      Nand.eval(inputs)[0]
    ])
  end
end
