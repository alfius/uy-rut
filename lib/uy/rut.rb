module Uy
  class Rut
    FACTORS = [4,3,2,9,8,7,6,5,4,3,2]

    attr_accessor :rut

    def initialize(rut=nil)
      @rut = rut || Rut.generate
    end

    def is_valid?
      return false unless @rut =~ /\d{12}/
      return false unless (1..21) === @rut[0..1].to_i
      return false unless @rut[8..9] == '00'

      begin
        return false unless Rut.calculate_check_digit(@rut) == @rut[11].to_i
      rescue
        return false
      end

      true
    end

    alias valid? is_valid?

    protected

    def self.calculate_check_digit(rut)
      rut = rut.length == 12 ? rut.chop : rut
      checksum =
        rut
        .chars
        .to_a
        .map(&:to_i)
        .zip(FACTORS)
        .map {|d| d.reduce(&:*)}
        .reduce(:+)
      check_digit = 11 - (checksum % 11)
      check_digit = 0 if check_digit == 11
      fail if check_digit == 10
      check_digit
    end

    def self.generate
      rut = sprintf('%02d', rand(1..21))
      6.times { rut += rand(1..9).to_s }
      rut += '00'
      rut += rand(0..9).to_s

      begin
        rut += calculate_check_digit(rut).to_s
      rescue
        # bad checksum, retry
        return Rut.generate
      end

      rut
    end
  end
end
