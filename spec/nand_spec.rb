require "rspec"
require "Nand"
require "state"

RSpec.describe Nand do
  context "[HIGH, HIGH]" do
    it "[LOW]" do
      expect(Nand.eval([State::HIGH, State::HIGH])).to eq([State::LOW])
    end
  end
  context "[HIGH, LOW]" do
    it "[HIGH]" do
      expect(Nand.eval([State::HIGH, State::LOW])).to eq([State::HIGH])
    end
  end
  context "[LOW, HIGH]" do
    it "[HIGH]" do
      expect(Nand.eval([State::LOW, State::HIGH])).to eq([State::HIGH])
    end
  end
  context "[LOW, LOW]" do
    it "[HIGH]" do
      expect(Nand.eval([State::LOW, State::LOW])).to eq([State::HIGH])
    end
  end
end
