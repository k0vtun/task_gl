def NearestFoundDay(week)
  if week.length == 7
    all = 0.0
    week.each_value { |temp|
      all = all + temp
    }

    min = avg = (all / 7).round(2)
    closest = nil

    week.each_pair { |day, temp|
      if ((temp - avg).abs.round(2)) < min
        min = (temp - avg).abs.round(2)
        closest = day
      end
    }
    puts "Week average value: #{avg}"
    puts "The first day of week that has temperature nearest to the week average value: #{closest.capitalize}, that have #{week[closest]} value"
  else
    puts 'Please input seven days for week!'
  end
end

NearestFoundDay({:monday => 5.2, :tuesday => 5.6, :wednesday => 4.8, :thursday => 6.4, :friday => 4.8, :saturday => 5.6, :sunday => 5.7})