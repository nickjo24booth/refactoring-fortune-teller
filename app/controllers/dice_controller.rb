class DiceController < ApplicationController
  def infinity
    @num_dice = params.fetch("number_of_dice")
    @num_faces = params.fetch("sides")

    @array_of_rolls = Array.new

    @num_dice.to_i.times do
      @array_of_rolls.push(rand(@num_faces.to_i) + 1)
    end

    render({ :template => "dice_templates/infinity.html.erb" })
  end
end
