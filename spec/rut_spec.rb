require 'uy/rut'

describe Uy::Rut do
  describe 'validations' do
    it { expect(Uy::Rut.new('')).not_to be_valid }             # Empty
    it { expect(Uy::Rut.new('asdf')).not_to be_valid }         # Non digits, wrong length
    it { expect(Uy::Rut.new('11222222008')).not_to be_valid }  # Wrong length
    it { expect(Uy::Rut.new('asdfasdfasdf')).not_to be_valid } # Non digits
    it { expect(Uy::Rut.new('873332220087')).not_to be_valid } # Two first digits need to be in 1..21
    it { expect(Uy::Rut.new('024445558811')).not_to be_valid } # Digits 8 and 9 need to be 0
    it { expect(Uy::Rut.new('035557770088')).not_to be_valid } # Invalid check digit
    it { expect(Uy::Rut.new('211003420017')).to be_valid }     # Antel
    it { expect(Uy::Rut.new('211406340011')).to be_valid }     # Movistar
  end

  describe 'generation' do
    it 'generates valid numbers' do
      100.times { expect(Uy::Rut.new).to be_valid }
    end
  end
end
