

class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root

    @square_root_target = params["square_root_target"].to_f
    @square_root = (@square_root_target**0.5).round(2)

    render("square_root.html.erb")
  end

  def random_number

    @min = params["min"].to_i
    @max = params["max"].to_i

    @r = Random.new
    @random_value = @r.rand(@min...(@max+1))

    render("random.html.erb")
  end

  def payment

    @principal = params["principal"].to_f
    @apr = (params["apr"].to_f)/10
    @years = params["years"].to_f

    @monthly_payment = (@principal*((@apr/100)/(12.0*(1.0-(1.0+(@apr/100)/12.0)**(-@years*12.0))))).round(2)

  end

end
