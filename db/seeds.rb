# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



#seed Airports
Airport.delete_all
Airport.create!([
                    {airport_code: "PDX"},
                    {airport_code: "YUL"},
                    {airport_code: "MDW"},
                    {airport_code: "SEA"}
                ])



#set variables for use in seeds
#https://github.com/craftykate/odin-project/blob/master/Chapter_04-Advanced_Rails/flight-booker/db/seeds.rb

t = Time.now
hours = 60
days = 60*60*24
def randomize
  Random.new.rand(11.1..15.9)
end




#seed Flights next....
Flight.delete_all

20.times do
  Flight.create!([
                     {start_city_id: Airport.find_by(airport_code: "PDX").id,
                      end_city_id: Airport.find_by(airport_code: "YUL").id,
                      start_time: t + randomize*days,
                      flight_duration: 5*hours
                      },

                    {start_city_id: Airport.find_by(airport_code: "PDX").id,
                     end_city_id: Airport.find_by(airport_code: "MDW").id,
                     start_time: t + randomize*days,
                     flight_duration: 3*hours
                     },

                     {start_city_id: Airport.find_by(airport_code: "PDX").id,
                      end_city_id: Airport.find_by(airport_code: "SEA").id,
                      start_time: t + randomize*days,
                      flight_duration: 1*hours
                     }


  ])
end

20.times do
  Flight.create!([
                     {start_city_id: Airport.find_by(airport_code: "YUL").id,
                      end_city_id: Airport.find_by(airport_code: "PDX").id,
                      start_time: t + randomize*days,
                      flight_duration: 5*hours
                     },

                     {start_city_id: Airport.find_by(airport_code: "YUL").id,
                      end_city_id: Airport.find_by(airport_code: "MDW").id,
                      start_time: t + randomize*days,
                      flight_duration: 2*hours
                     },

                     {start_city_id: Airport.find_by(airport_code: "YUL").id,
                      end_city_id: Airport.find_by(airport_code: "SEA").id,
                      start_time: t + randomize*days,
                      flight_duration: 5*hours
                     }


                 ])
end

20.times do
  Flight.create!([
                     {start_city_id: Airport.find_by(airport_code: "MDW").id,
                      end_city_id: Airport.find_by(airport_code: "PDX").id,
                      start_time: t + randomize*days,
                      flight_duration: 4*hours
                     },

                     {start_city_id: Airport.find_by(airport_code: "MDW").id,
                      end_city_id: Airport.find_by(airport_code: "YUL").id,
                      start_time: t + randomize*days,
                      flight_duration: 2*hours
                     },

                     {start_city_id: Airport.find_by(airport_code: "MDW").id,
                      end_city_id: Airport.find_by(airport_code: "SEA").id,
                      start_time: t + randomize*days,
                      flight_duration: 4*hours
                     }


                 ])
end

20.times do
  Flight.create!([
                     {start_city_id: Airport.find_by(airport_code: "SEA").id,
                      end_city_id: Airport.find_by(airport_code: "PDX").id,
                      start_time: t + randomize*days,
                      flight_duration: 1*hours
                     },

                     {start_city_id: Airport.find_by(airport_code: "SEA").id,
                      end_city_id: Airport.find_by(airport_code: "YUL").id,
                      start_time: t + randomize*days,
                      flight_duration: 5*hours
                     },

                     {start_city_id: Airport.find_by(airport_code: "SEA").id,
                      end_city_id: Airport.find_by(airport_code: "MDW").id,
                      start_time: t + randomize*days,
                      flight_duration: 3*hours
                     }


                 ])
end

