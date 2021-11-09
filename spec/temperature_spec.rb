require './lib/convert_temperature'

RSpec.describe ConvertTemperature do
  describe '#converter' do
    context 'F to C convert' do
      subject { ConvertTemperature.new('F', 'C', 10).convert }
      it { is_expected.to eq -12.32 }
    end

    context 'C to F convert' do
      subject { ConvertTemperature.new('C', 'F', 10).convert }
      it { is_expected.to eq 50.0 }
    end

    context 'F to K convert' do
      subject { ConvertTemperature.new('K', 'C', 10).convert }
      it { is_expected.to eq -263.15 }
    end
  end
end