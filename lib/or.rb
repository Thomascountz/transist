# typed: strict

require "sorbet-runtime"
require "not"
require "nand"
require "state"
require "interfaces"

class Or < TwoInputOneOutput
  extend T::Sig
  sig { override.params(inputs: [State, State]).returns([State]) }
  def self.eval(inputs)
    Nand.eval([
      Not.eval([inputs[0]])[0],
      Not.eval([inputs[1]])[0]
    ])
  end
end
