require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  #smccarty41027 copies
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  #smccarty41027 says
  holiday_hash[:winter].collect{|e, v| v<<supply}
  #binding.pry aha moments
  #only you can
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  #smccarty41027 proceeds
  holiday_hash[:spring][:memorial_day] << supply
  #binding.pry is always fun
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
#so we're going through the holiday hash
#if it's a season_key, then Print it Pretty
#for each of it's holidays, [+1 tab]Print it Pretty
#Print each item in it's array [+2 tab]Pretty
#A NEW HOPE
seasons_array = []
holidays_array = []
thisSeason = '';
thisHoliday = '';
theseSupplies = '';
holiday_supplies_str = '';

holiday_hash.each do |season, holiday_data|
  thisSeason = season.to_s;
  thisSeason.tr!('_', ' ');
  thisSeason = thisSeason.split.each{|e| e.capitalize!}.join(' ');
  puts thisSeason + ':';
  seasons_array << thisSeason;
  holiday_data.each do |holiday, supplies_array|
    theseSupplies = '';
    thisHoliday = holiday.to_s;
    thisHoliday.tr!('_', ' ');
    thisHoliday = thisHoliday.split.each{|e| e.capitalize!}.join(' ');
    holidays_array << thisHoliday;
    supplies_array.each_with_index do|supply, i|
      theseSupplies += " #{supply}";
      unless i == supplies_array.length - 1
        theseSupplies += ',';
      end
    end
    puts "  " + thisHoliday + ":" + theseSupplies;
  end
end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
#my wall of shame
#  holiday_hash.each do |season, holidays|
#    puts "#{season.to_s.capitalize}:"
#    holidays.each do |holiday, supplies|
#      binding.pry
#      print "  #{holiday.to_s.split.capitalize}: "
#      supplies.each{|e| print e + ", " unless e == e.last}
#      print e.last + "\n"
#    end
#end my wall of shame

  #binding.pry
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = [];
  holiday_hash.each do |season, holiday_data|
    holiday_data.each do |holiday, supplies_array|
      if supplies_array.include?("BBQ")
        bbq_holidays << holiday;
      end
    end
  binding.pry
  end
  bbq_holidays;
end
