require './lib/io_adapter'

RSpec.describe IOAdapter do
  describe '#input_value' do
    subject { IOAdapter.new.input_value }
    it { is_expected.to eq 10 }
  end

  describe '#choose_scale' do
    subject { IOAdapter.new.choose_scale }
    it { is_expected.to eq '1' }
  end

  describe '#output_value' do
    subject { IOAdapter.new.output_value('F', 50.0) }
    it { is_expected.to eq nil }
  end
end
