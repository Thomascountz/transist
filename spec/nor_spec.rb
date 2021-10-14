require "rspec"
require "nor"
require "state"

RSpec.describe Nor do
  context "[HIGH, HIGH]" do
    it "[LOW]" do
      expect(Nor.eval([State::HIGH, State::HIGH])).to eq([State::LOW])
    end
  end
  context "[HIGH, LOW]" do
    it "[LOW]" do
      expect(Nor.eval([State::HIGH, State::LOW])).to eq([State::LOW])
    end
  end
  context "[LOW, HIGH]" do
    it "[LOW]" do
      expect(Nor.eval([State::LOW, State::HIGH])).to eq([State::LOW])
    end
  end
  context "[LOW, LOW]" do
    it "[HIGH]" do
      expect(Nor.eval([State::LOW, State::LOW])).to eq([State::HIGH])
    end
  end
end
