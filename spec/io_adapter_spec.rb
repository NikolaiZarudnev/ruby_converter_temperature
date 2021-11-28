require './lib/io_adapter'

RSpec.describe IOAdapter do
  describe '#io_adapter' do
    it 'puts_menu' do
      expect do
        IOAdapter.new.puts_menu
      end.to output("Сhoose an action:\n1. Convert from C\n2. Convert from K\n3. Convert from F\n4. Exit\n").to_stdout
    end
    it 'output_value' do
      expect do
        IOAdapter.new.output_value('F', 24.5)
      end.to output("F = 24.5\n").to_stdout
    end
    context '.input_scale' do
      expect = 'C'
      subject { IOAdapter.new.input_scale }
      it { is_expected.to eq expect }
    end
    context '.convert_value' do
      expect = 24.0
      subject { IOAdapter.new.convert_value('24.0') }
      it { is_expected.to eq expect }
    end
    context '.input_value' do
      expect = 24.0
      subject { IOAdapter.new.input_value('F') }
      it { is_expected.to eq expect }
    end
    context '.output_scale' do
      subject { IOAdapter.new.output_scale('F') }
      it { is_expected.to eq %w[C K] }
    end
    context '.check_value' do
      subject { IOAdapter.new.check_value(24.5) }
      it { is_expected.to eq true }
    end
    context '.check_value' do
      subject { IOAdapter.new.check_value('qwe') }
      it { is_expected.to eq false }
    end
    it 'check_choice' do
      expect do
        IOAdapter.new.check_choice(nil)
      end.to output("Invalid input\n").to_stdout
    end
    context '.check_choice' do
      subject { IOAdapter.new.check_choice(nil) }
      it { is_expected.to eq false }
    end
    context '.check_choice' do
      subject { IOAdapter.new.check_choice('C') }
      it { is_expected.to eq true }
    end
  end
end
