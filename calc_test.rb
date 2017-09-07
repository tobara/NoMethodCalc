gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'calc'

class CalcTest < Minitest::Test
  def test_calc_can_add
    calc = Calc.new.one.plus.three

    assert_equal 4, calc
  end

  def test_calc_can_multiply
    calc = Calc.new.one.times.three

    assert_equal 3, calc
  end

  def test_calc_can_divide
    calc = Calc.new.eight.divided_by.four

    assert_equal 2, calc
  end

  def test_calc_can_subtract
    calc = Calc.new.eight.minus.two

    assert_equal 6, calc
  end
end
