# typed: strict

require "sorbet-runtime"
require "not"
require "or"
require "state"
require "interfaces"

class Nor < TwoInputOneOutput
  extend T::Sig
  sig { override.params(inputs: [State, State]).returns([State]) }
  def self.eval(inputs)
    Not.eval(
      Or.eval(inputs)
    )
  end
end
