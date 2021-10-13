# typed: strict

require "sorbet-runtime"
require "not"
require "and"
require "state"
require "interfaces"

class Nand < TwoInputOneOutput
  extend T::Sig
  sig { override.params(inputs: [State, State]).returns([State]) }
  def self.eval(inputs)
    Not.eval(
      And.eval(inputs)
    )
  end
end
