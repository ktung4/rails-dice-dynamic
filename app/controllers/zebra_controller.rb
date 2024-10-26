class ZebraController<ApplicationController
  def giraffe
    @rolls = []
    2.times do
      die = rand(1..6)
      @rolls.push(die)
    end
    render({:template=>"game_templates/two_six"})
  end

  def elephant
    @rolls = []
    2.times do
      die = rand(1..10)
      @rolls.push(die)
    end
    render({:template=>"game_templates/two_ten"})
  end

  def lion
    @rolls = []
    1.times do
      die = rand(1..20)
      @rolls.push(die)
    end
    render({:template=>"game_templates/one_twenty"})
  end

  def cat
    @rolls = []
    5.times do
    die = rand(1..4)
    @rolls.push(die)
    end
    render({:template=>"game_templates/five_four"})
  end

  def homepage

    render({:template=>"game_templates/homepage"})
  end

  def dog
    @num_dice = params.fetch("number_of_dice").to_i
    @sides = params.fetch("how_many_sides").to_i
    @rolls = []
  
    @num_dice.times do
      die = rand(1..6)
      @rolls.push(die)
    end
    render({:template=>"game_templates/flexible"})
  end
end
