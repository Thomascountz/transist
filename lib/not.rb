# typed: strict

require "sorbet-runtime"
require "relay"
require "state"
require "interfaces"

class Not < OneInputOneOutput
  extend T::Sig
  sig { override.params(inputs: [State]).returns([State]) }
  def self.eval(inputs)
    [
      Relay.eval([State::HIGH, inputs[0]])[1]
    ]
  end
end
