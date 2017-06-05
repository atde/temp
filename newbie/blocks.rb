def prime
 require 'prime'
 yield Prime.first(10)
end

prime{|primos| puts "#{primos}" }

#test
#=>[2, 3, 5, 7, 11, 13, 17, 19, 23, 29]


def average_grade(array)
 time_start = Time.now
 puts "------------Time started----------"
 puts "Start time: #{time_start}" 
 puts "Average is: #{yield array}"
 puts "------------Time finished----------"
 time_end = Time.now
 puts "End time: #{time_end}"
p time_took = ( - time_start.to_f + time_end.to_f).to_f.round(6)
 puts "Result: #{time_took} seconds"
end

average_grade ([10, 8, 4.9]){|grades| grades.inject {|result, element | (result + element.to_f)} / grades.length.round(1)} 

#test
#=>
# ------------Time started----------
# Start time: 2016-06-17 20:14:46 -0500

# "Average is: 7.6"

# End time: 2016-06-17 20:14:46 -0500
# -------------Time finished--------
# Result: 0.000142 seconds

  


