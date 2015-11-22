# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'securerandom'

100.times do 
 Jobdemand.create(
                   :title => SecureRandom.hex(8),
                   :overview => SecureRandom.hex(8),
                   :reponsibility => SecureRandom.hex(8),
                   :competency => SecureRandom.hex(8), 
                   :education => SecureRandom.hex(8),
                   :workexperience => SecureRandom.hex(8),
                   :lauguage => SecureRandom.hex(8),
                   :other => SecureRandom.hex(8)
                   )
end
