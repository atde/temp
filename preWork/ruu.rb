def swim(time)
  unless time > 10
    "#{time} seconds... New Record for 50 meters"
   end
end

#test
p swim(5) == "5 seconds... New Record for 50 meters"
p swim(8) == "8 seconds... New Record for 50 meters"