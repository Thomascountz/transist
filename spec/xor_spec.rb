require "rspec"
require "xor"
require "state"

RSpec.describe Xor do
  context "[HIGH, HIGH]" do
    it "[LOW]" do
      expect(Xor.eval([State::HIGH, State::HIGH])).to eq([State::LOW])
    end
  end
  context "[HIGH, LOW]" do
    it "[HIGH]" do
      expect(Xor.eval([State::HIGH, State::LOW])).to eq([State::HIGH])
    end
  end
  context "[LOW, HIGH]" do
    it "[HIGH]" do
      expect(Xor.eval([State::LOW, State::HIGH])).to eq([State::HIGH])
    end
  end
  context "[LOW, LOW]" do
    it "[LOW]" do
      expect(Xor.eval([State::LOW, State::LOW])).to eq([State::LOW])
    end
  end
end
