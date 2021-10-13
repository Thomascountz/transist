# typed: strict

require "sorbet-runtime"
require "./lib/relay"
require "./lib/state"

class And
  class << self
    extend T::Sig
    sig { params(inputs: [State, State]).returns([State]) }
    def eval(inputs)
      [
        Relay.eval([
          inputs[1],
          Relay.eval([State::HIGH, inputs[0]])[0]
        ])[0]
      ]
    end
  end
end
