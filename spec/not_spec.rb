require "rspec"
require "not"
require "state"

RSpec.describe Not do
  context "[HIGH]" do
    it "[LOW]" do
      expect(Not.eval([State::HIGH])).to eq([State::LOW])
    end
  end
  context "[LOW]" do
    it "[HIGH]" do
      expect(Not.eval([State::LOW])).to eq([State::HIGH])
    end
  end
end
