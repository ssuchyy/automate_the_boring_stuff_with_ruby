class Inventory
  def initialize(inventory)
    @inventory = inventory
  end

  def display_inventory
    puts 'Inventory:'
    @inventory.each do |key, value|
      puts "#{value} #{key}"
    end
    puts "Total number of items #{@inventory.values.reduce(:+)}"
  end

  def add_to_inventory(loot)
    loot.each do |item|
      if @inventory[item]
        @inventory[item] += 1
      else
        @inventory[item] = 1
      end
    end
  end
end

inventory = {
  'rope' => 1,
  'torch' => 6,
  'gold coin' => 42,
  'dagger' => 1,
  'arrow' => 12
}

loot = %w(ruby arrow arrow arrow dagger)

inv = Inventory.new(inventory)
puts 'Before loot'
inv.display_inventory
inv.add_to_inventory(loot)
puts 'After loot'
inv.display_inventory
