inventory = {
  'rope' => 1,
  'torch' => 6,
  'gold coin' => 42,
  'dagger' => 1,
  'arrow' => 12
}

def display_inventory(inventory)
  puts 'Inventory:'
  inventory.each do |key, value|
    puts "#{value} #{key}"
  end
  puts "Total number of items #{inventory.values.reduce(:+)}"
end

display_inventory(inventory)
