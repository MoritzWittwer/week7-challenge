# using ruby paint gem to colorize the text
require 'paint'

# Orange Tree Class with states
class OrangeTree
  def initialize
    @height = 0
    @alive = true
    @oranges = 0
    @age = 0
  end

  def one_year_passes
    @age += 1
    if @age > 10
      @alive = false
      puts Paint['the tree is dead', :red, :white, :bright, :underline]
      exit
    elsif @alive == true
      @height += 0.25
      puts Paint["another year passes, the tree is #{@age} years old and has a height of #{@height} meters", 'gold']
    end
  end

  def count_the_oranges
    if @alive && @age > 4
      @oranges = @age * 3
      puts Paint["the tree grew #{@oranges} oranges this year", [255, 95, 31], :italic]
    else
      puts Paint['the tree has no fruits', :green]
    end
  end

  def pick_an_orange
    if @alive && @oranges > 0
      @oranges -= 1
      puts "you pick an orange and eat it, #{@oranges} remain on the tree"
    else
      puts Paint['you cant find any oranges', :blue]
    end
  end
end

tree = OrangeTree.new
13.times do
  tree.one_year_passes
  tree.count_the_oranges
  tree.pick_an_orange
end
