class OrangeTree

  def initialize
    @height = 6
    @age = 1
    @oranges = 0
    @alive = true
  end

  def one_year_passes

    if @alive
      @height += 1
      @age += 1

      puts "One year passes..."

      # Is the tree still alive?
      if @age > 10
        puts "The tree died."
        @alive = false
      elsif @age > 2
        # Grow new oranges (12 for each year)
        @oranges = 12 * @age
      end

      puts "The tree is #{@height} feet tall and has #{@oranges} oranges."

    else
      puts "The tree is dead."
    end

  end

  def count_the_oranges
    puts "There are #{@oranges} ripe oranges."
  end

  def pick_an_orange
    if @oranges > 0
      puts "You picked an orange and it was excellent!"
      @oranges -= 1
    else
      puts "There aren't any oranges to pick!"
    end
  end

end

# Create an orange tree
tree = OrangeTree.new

tree.one_year_passes
tree.pick_an_orange

tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes