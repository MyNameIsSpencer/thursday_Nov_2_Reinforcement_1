puts '-' * 20
puts '-' * 20

train_velocities =
[
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]


def trainer (array_x, train_id, variable)
  array_x.each do |hasher|
      if hasher[:train] == train_id
        return hasher[variable]
      end
  end
end

puts direction_111 = trainer(train_velocities, "111", :direction)
puts frequency_80B = trainer(train_velocities, "80B", :frequency_in_minutes)
puts direction_610 = trainer(train_velocities, "610", :direction)


def directioner(array_of_trains, direction)
  result_array = []
  array_of_trains.each do |hasher|
    if hasher[:direction] == direction
      result_array << hasher
    end
  end
  return result_array
end


puts north_trains = directioner(train_velocities, "north")
puts east_trains = directioner(train_velocities, "east")


def departure_time (array_of_trains, train_id, time)
  array_of_trains.each do |hasher|
    if hasher[:train] == train_id
      hasher[:first_departure_time] = time
    end
  end
end

puts '+' * 20
puts '+' * 20
puts '+' * 20

#Train 72C
puts departure_time(train_velocities, '72C', 6)




# puts train_velocities

# direction_111 = train_velocities[7][:direction]
# frequency_80B = train_velocities[5][:frequency_in_minutes]
# direction_610 = train_velocities[2][:direction]


#
#
# def newdef(a_name, a_value, tr)
#   array[]
#   train_velocities.each do |hasher|
#        if a_direction == "north"
#          direction_111 = hasher[:direction]
#        end
#      end
#
# end


#
# train_velocities.each do |hasher|
#     if hasher[:train] == "111"
#       direction_111 = hasher[:direction]
#     end
#   end
#
# train_velocities.each do |hasher|
#       if hasher[:train] == "80B"
#         frequency_80B = hasher[:direction]
#       end
#     end
#
# train_velocities.each do |hasher|
#     if hasher[:train] == "610"
#         direction_610 = hasher[:direction]
#       end
#   end




  #
  # puts direction_111
  # puts frequency_80B
  # puts direction_610



# 111_direction = train_velocities
# 80B_frequency = train_velocities
# 610_direction = train_velocities

# def trainer (array_x, train_id, variable)
#   array_x.each do |hasher|
#       if hasher[:train] == train_id
#         return hasher[variable]
#       end
#   end
# end
