require "rspec"
require "and"
require "state"

RSpec.describe And do
  context "[HIGH, HIGH]" do
    it "[HIGH]" do
      expect(And.eval([State::HIGH, State::HIGH])).to eq([State::HIGH])
    end
  end
  context "[HIGH, LOW]" do
    it "[LOW]" do
      expect(And.eval([State::HIGH, State::LOW])).to eq([State::LOW])
    end
  end
  context "[LOW, HIGH]" do
    it "[LOW]" do
      expect(And.eval([State::LOW, State::HIGH])).to eq([State::LOW])
    end
  end
  context "[LOW, LOW]" do
    it "[LOW]" do
      expect(And.eval([State::LOW, State::LOW])).to eq([State::LOW])
    end
  end
end
