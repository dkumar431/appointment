class Slot < ApplicationRecord

  def self.get_slots(strt_time, end_time)
  	slots =[]
  	temp = strt_time
	while(temp<= end_time) do
		slots << Slot.all.find{|s|s.start_time==temp.strftime("%H:%M")}
	    temp = temp+30.minutes
	end
	p slots
	slots
  end
  def start_time
  	read_attribute(:start_time).strftime("%H:%M")
  end 
end
