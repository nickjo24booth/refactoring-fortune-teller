class FortunesController < ApplicationController
  def horoscopes
    @sign = params.fetch("the_sign")

    all_signs = Zodiac.list

    this_sign = all_signs.fetch(@sign.to_sym)
    @horoscope = this_sign.fetch(:horoscope)

    render({ :template => "fortune_templates/fortune.html.erb" })
  end
end
