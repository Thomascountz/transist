# typed: strict

require "sorbet-runtime"

class TwoInputOneOutput
  extend T::Sig
  extend T::Helpers
  abstract!

  sig { abstract.params(inputs: [State, State]).returns([State]) }
  def self.eval(inputs)
  end
end

class TwoInputTwoOutput
  extend T::Sig
  extend T::Helpers
  abstract!

  sig { abstract.params(inputs: [State, State]).returns([State, State]) }
  def self.eval(inputs)
  end
end
