# typed: strict

require "sorbet-runtime"
require "half_adder"
require "or"
require "state"
require "interfaces"

class FullAdder < ThreeInputTwoOutput
  extend T::Sig
  sig { override.params(inputs: [State, State, State]).returns([State, State]) }
  def self.eval(inputs)
    half_adder_1 = HalfAdder.eval([inputs[0], inputs[1]])
    half_adder_2 = HalfAdder.eval([inputs[2], half_adder_1[0]])
    [
      half_adder_2[0],
      Or.eval([
        half_adder_1[1],
        half_adder_2[1]
      ])[0]
    ]
  end
end
