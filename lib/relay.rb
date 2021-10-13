# typed: strict

require "sorbet-runtime"
require "./lib/state"

class Relay
  class << self
    extend T::Sig
    sig { params(inputs: [State, State]).returns([State, State]) }
    def eval(inputs)
      if inputs[0] == State::HIGH
        if inputs[1] == State::HIGH
          [State::HIGH, State::LOW]
        else
          [State::LOW, State::HIGH]
        end
      else
        [State::LOW, State::LOW]
      end
    end
  end
end
