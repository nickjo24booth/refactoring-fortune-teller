class FortunesController < ApplicationController
  def horoscopes
    @sign = params.fetch("the_sign")

    all_signs = Zodiac.list

    this_sign = all_signs.fetch(@sign.to_sym)
    @horoscope = this_sign.fetch(:horoscope)

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)

      @array_of_numbers.push(another_number)
    end

    render({ :template => "fortune_templates/fortune.html.erb" })
  end
end
