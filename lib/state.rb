# typed: strict

require "sorbet-runtime"

class State < T::Enum
  enums do
    HIGH = new("HIGH")
    LOW = new("LOW")
  end
end
