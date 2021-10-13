require "rspec"
require "relay"
require "state"

RSpec.describe Relay do
  context "[HIGH, HIGH]" do
    it "[HIGH, LOW]" do
      expect(Relay.eval([State::HIGH, State::HIGH])).to eq([State::HIGH, State::LOW])
    end
  end
  context "[HIGH, LOW]" do
    it "[LOW, HIGH]" do
      expect(Relay.eval([State::HIGH, State::LOW])).to eq([State::LOW, State::HIGH])
    end
  end
  context "[LOW, HIGH]" do
    it "[LOW, LOW]" do
      expect(Relay.eval([State::LOW, State::HIGH])).to eq([State::LOW, State::LOW])
    end
  end
  context "[LOW, LOW]" do
    it "[LOW, LOW]" do
      expect(Relay.eval([State::LOW, State::LOW])).to eq([State::LOW, State::LOW])
    end
  end
end
