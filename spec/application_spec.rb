require './lib/application'

RSpec.describe Application do
  describe '#aplication' do
    it 'convert_launch' do
      expect do
        Application.new.convert_launch('C', 10.0)
      end.to output("K = 283.15\nF = 50.0\n").to_stdout
    end
  end
end
