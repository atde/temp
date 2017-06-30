class Fixnum
  ROMAN_NUMBERS = {
    1000 => "M",  
     900 => "CM",  
     500 => "D",  
     400 => "CD",
     100 => "C",  
      90 => "XC",  
      50 => "L",  
      40 => "XL",  
      10 => "X",  
        9 => "IX",  
        5 => "V",  
        4 => "IV",  
        1 => "I",  
        0 => "",  
  }
  def roman
    return '' if self == 0
    ROMAN_NUMBERS.each do |value, letter|
      return ( letter * (self / value)) << (self % value).roman if value <= self
    end
    return (self % value).roman
  end
end

require 'test/unit'

class NumberTest < Test::Unit::TestCase
  def test_0; assert_equal('',0.roman); end
  def test_1; assert_equal('I',1.roman); end
  def test_2; assert_equal('II',2.roman); end
  def test_3; assert_equal('III',3.roman); end
  def test_4; assert_equal('IV',4.roman); end
  def test_5; assert_equal('V',5.roman); end
  def test_6; assert_equal('VI',6.roman); end
  def test_7; assert_equal('VII',7.roman); end
  def test_8; assert_equal('VIII',8.roman); end
  def test_9; assert_equal('IX',9.roman); end
  def test_10; assert_equal('X',10.roman); end
  def test_11; assert_equal('XI',11.roman); end
  def test_12; assert_equal('XII',12.roman); end
  def test_13; assert_equal('XIII',13.roman); end
  def test_14; assert_equal('XIV',14.roman); end
  def test_15; assert_equal('XV',15.roman); end
  def test_16; assert_equal('XVI',16.roman); end
  def test_20; assert_equal('XX',20.roman); end
  def test_30; assert_equal('XXX',30.roman); end
  def test_40; assert_equal('XL',40.roman); end
  def test_50; assert_equal('L',50.roman); end
  def test_60; assert_equal('LX',60.roman); end
  def test_70; assert_equal('LXX',70.roman); end
  def test_80; assert_equal('LXXX',80.roman); end
  def test_90; assert_equal('XC',90.roman); end
  def test_99; assert_equal('XCIX',99.roman); end
  def test_100; assert_equal('C',100.roman); end
  def test_200; assert_equal('CC',200.roman); end
  def test_300; assert_equal('CCC',300.roman); end
  def test_400; assert_equal('CD',400.roman); end
  def test_500; assert_equal('D',500.roman); end
  def test_600; assert_equal('DC',600.roman); end
  def test_900; assert_equal('CM',900.roman); end
  def test_1000; assert_equal('M',1000.roman); end
  def test_2000; assert_equal('MM',2000.roman); end
  def test_2003; assert_equal('MMIII',2003.roman); end
end