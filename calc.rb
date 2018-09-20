require './exp.rb'

class Calc

  def initialize
    @expression = []
  end

  def method_missing(name)
    build_express(name.to_s)
    calc = self.dup
    @expression.length < 3 ? calc : solve_exp
  end

  def build_express(str)
    Exp::INT_INDEX.include?(str) ? int_to_exp(str) : op_to_exp(str)
  end

  def int_to_exp(str)
    @expression << Exp::INT_INDEX.index(str)
  end

  def op_to_exp(str)
     @expression << Exp::OP_INDEX.key(str)
  end

  def solve_exp
    return eval @expression.join("")
  end
end

