require 'date'

sundays_in_21st_cent = []

Date.new(1901, 1, 1).upto(Date.new(2000, 12, 31)).find_all do |d|
	sundays_in_21st_cent << d if d.wday == 0 && d.mday == 1
end

puts sundays_in_21st_cent.length #=> 171
