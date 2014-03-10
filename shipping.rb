require './lib/parcel'

@parcels = []

def shipping_menu
  puts "Press 'n' to enter a new package, 's' to show all parcels, or 'x' to exit."
  choice = gets.chomp
  if choice == 'n'
    add_parcel
  elsif choice == 's'
    show_parcels
    shipping_menu
  elsif choice == 'x'
    puts "Goodbye"
  else
    puts "Sorry, the princess is in another castle."
    shipping_menu
  end
end

def add_parcel
  puts "Please enter your package weight."
  weight_entry = gets.chomp.to_i
  # if weight_entry
  puts "Weight added.\n\n"

  puts "Please enter your package height."
  height_entry = gets.chomp.to_i
  puts "Height added.\n\n"

  puts "Please enter your package width."
  width_entry = gets.chomp.to_i
  puts "Width added.\n\n"

  puts "Please enter your package length."
  length_entry = gets.chomp.to_i
  puts "Length added.\n\n\n"

  new_parcel = Parcel.new(height_entry, width_entry, length_entry, weight_entry)

  puts "Calculating shipping...beep boop beep boop...\n\n"
  puts "Still calculating, please wait...\n\n"
  puts "...\n\n"
  puts "Your shipping cost is $#{new_parcel.shipping_cost}."

  @parcels << new_parcel
  shipping_menu
end

def show_parcels
  @parcels.each do |parcel|
    puts "Your shipping cost is $#{parcel.shipping_cost}."
  end

end

shipping_menu
