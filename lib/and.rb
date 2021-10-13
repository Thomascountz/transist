# typed: strict

require "sorbet-runtime"
require "relay"
require "state"
require "interfaces"

class And < TwoInputOneOutput
  extend T::Sig
  sig { override.params(inputs: [State, State]).returns([State]) }
  def self.eval(inputs)
    [
      Relay.eval([
        inputs[1],
        Relay.eval([State::HIGH, inputs[0]])[0]
      ])[0]
    ]
  end
end
