require "rspec"
require "half_adder"
require "state"

RSpec.describe HalfAdder do
  context "[HIGH, HIGH]" do
    it "[HIGH, HIGH]" do
      expect(HalfAdder.eval([State::HIGH, State::HIGH])).to eq([State::LOW, State::HIGH])
    end
  end
  context "[HIGH, LOW]" do
    it "[LOW, HIGH]" do
      expect(HalfAdder.eval([State::HIGH, State::LOW])).to eq([State::HIGH, State::LOW])
    end
  end
  context "[LOW, HIGH]" do
    it "[LOW, HIGH]" do
      expect(HalfAdder.eval([State::LOW, State::HIGH])).to eq([State::HIGH, State::LOW])
    end
  end
  context "[LOW, LOW]" do
    it "[LOW, LOW]" do
      expect(HalfAdder.eval([State::LOW, State::LOW])).to eq([State::LOW, State::LOW])
    end
  end
end
