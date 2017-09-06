temp = Date.today.beginning_of_day
while(temp<= Date.today.end_of_day) do
    Slot.create!(start_time: (temp).strftime("%H:%M"), end_time: (Date.today.beginning_of_day+30.minutes).strftime("%H:%M"))
    temp = temp+30.minutes
end