require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do | holiday, decor |
    decor << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day][1] = supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do | season, holiday |
    puts "#{season.to_s.capitalize!}:"
      holiday.each do | title, supplies |
        #line = "  " + title.to_s.capitalize! + ": "
            #line.include?("_")
            line = title.to_s.split("_")
            line.each do | word |
              word.capitalize!
            end
            #binding.pry
            line = line.join(" ")
          line_2 = supplies.each do | items |  
            if items.include?(" ")
              items = items.split(" ")
              items = items.join(" ")
            end
        end.join(", ")
         puts "  #{line}: #{line_2}"
      end
  end

end

def all_holidays_with_bbq(holiday_hash)
  
  array_1 =[] 

  holiday_hash.each do | season, holiday |
    holiday.each do | holiday, supplies |
      if supplies.include?("BBQ")
        array_1 << holiday
      end
    end
  end
  array_1
end







