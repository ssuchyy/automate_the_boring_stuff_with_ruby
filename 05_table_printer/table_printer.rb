table_data = [['apples', 'oranges', 'cherries', 'banana'],
             ['Alice', 'Bob', 'Carol', 'David'],
             ['dogs', 'cats', 'moose', 'goose']]

def print_table(table_data)
  column_widths = table_data.map { |rows| rows.map { |string| string.length }.max }
  table_data[0].each_index do |index|
    puts (table_data.each_with_index.map { |rows, i| rows[index].ljust(column_widths[i]) }).join("|")
  end
end

print_table(table_data)
