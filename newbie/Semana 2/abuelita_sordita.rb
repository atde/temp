p "Platica con la Abuela Sordita"
def abuela_sordita(user_input)
  if user_input == user_input.upcase && user_input != "BYE TQM"
    "NO, NO DESDE 1983"
  elsif user_input == user_input.downcase
    "HUH?! NO TE ESCUCHO, HIJO!"
  elsif user_input == "BYE TQM"
    "BYE"
  end
end

string = " "
while string != "BYE"
    user_input = gets.chomp
    p string = abuela_sordita(user_input) 
end
