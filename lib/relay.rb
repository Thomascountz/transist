# typed: strict

require "sorbet-runtime"
require "interfaces"
require "state"

class Relay < TwoInputTwoOutput
  extend T::Sig
  sig { override.params(inputs: [State, State]).returns([State, State]) }
  def self.eval(inputs)
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
