require 'uy/rut'

describe Uy::Rut do
  describe 'validations' do
    it { expect(Uy::Rut.new('')).not_to be_valid }
    it { expect(Uy::Rut.new('asdf')).not_to be_valid }
    it { expect(Uy::Rut.new('11222222008')).not_to be_valid }
    it { expect(Uy::Rut.new('873332220087')).not_to be_valid }
    it { expect(Uy::Rut.new('010111110022')).not_to be_valid }
    it { expect(Uy::Rut.new('011011110029')).not_to be_valid }
    it { expect(Uy::Rut.new('011101110028')).not_to be_valid }
    it { expect(Uy::Rut.new('011110110027')).not_to be_valid }
    it { expect(Uy::Rut.new('011111010026')).not_to be_valid }
    it { expect(Uy::Rut.new('011111100025')).not_to be_valid }
    it { expect(Uy::Rut.new('024445558811')).not_to be_valid }
    it { expect(Uy::Rut.new('035557770088')).not_to be_valid }
    it { expect(Uy::Rut.new('219223180010')).to be_valid }
  end

  describe 'generation' do
    it 'generates valid numbers' do
      100.times { expect(Uy::Rut.new).to be_valid }
    end
  end
end
