require "rspec"
require "full_adder"
require "state"

RSpec.describe FullAdder do
  context "[LOW, LOW, LOW]" do
    it "[LOW, LOW]" do
      expect(FullAdder.eval([State::LOW, State::LOW, State::LOW]))
        .to eq([State::LOW, State::LOW])
    end
  end

  context "[LOW, HIGH, LOW]" do
    it "[HIGH, LOW]" do
      expect(FullAdder.eval([State::LOW, State::HIGH, State::LOW]))
        .to eq([State::HIGH, State::LOW])
    end
  end

  context "[HIGH, LOW, LOW]" do
    it "[HIGH, LOW]" do
      expect(FullAdder.eval([State::HIGH, State::LOW, State::LOW]))
        .to eq([State::HIGH, State::LOW])
    end
  end

  context "[HIGH, HIGH, LOW]" do
    it "[LOW, HIGH]" do
      expect(FullAdder.eval([State::HIGH, State::HIGH, State::LOW]))
        .to eq([State::LOW, State::HIGH])
    end
  end

  context "[LOW, LOW, HIGH]" do
    it "[HIGH, LOW]" do
      expect(FullAdder.eval([State::LOW, State::LOW, State::HIGH]))
        .to eq([State::HIGH, State::LOW])
    end
  end

  context "[LOW, HIGH, HIGH]" do
    it "[LOW, HIGH]" do
      expect(FullAdder.eval([State::LOW, State::HIGH, State::HIGH]))
        .to eq([State::LOW, State::HIGH])
    end
  end

  context "[HIGH, LOW, HIGH]" do
    it "[LOW, HIGH]" do
      expect(FullAdder.eval([State::HIGH, State::LOW, State::HIGH]))
        .to eq([State::LOW, State::HIGH])
    end
  end

  context "[HIGH, HIGH, HIGH]" do
    it "[HIGH, HIGH]" do
      expect(FullAdder.eval([State::HIGH, State::HIGH, State::HIGH]))
        .to eq([State::HIGH, State::HIGH])
    end
  end
end
