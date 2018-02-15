require 'net/http'
require 'json'
require 'pp'

# destroy all data to avoid duplication
# Country.destroy_all
# Airport.destroy_all
University.destroy_all
#
# puts 'Seed initiated...'
#
# # grab .json country data and create new Country objects
# country_url = 'https://restcountries.eu/rest/v2/all'
# country_uri = URI(country_url)
# country_response = Net::HTTP.get(country_uri)
# country_hash = JSON.parse(country_response)
#
# # countries are created without gdp for now
# country_hash.each do |country|
#   Country.create(code: country['alpha3Code'], name: country['name'])
# end
#
# puts '-' * 50
# puts "Created #{Country.count} countries from file."
#
# # add GDP data for countries using separate data source
# # grab .json country GDP data from local data source
# gdp_file = File.read('data_files/global_gdp_datahub.json')
# gdp_hash = JSON.parse(gdp_file)
#
# found_count = 0
# not_found_count = 0
# # this date is taken from the data file
# year = '2016-11-08'
#
# gdp_hash.each do |entry|
#   # only pull GDP data from the most recent year, in this case 2016
#   if entry['Year'] == year
#     # current_country is country being processed from file
#     # existing country is the Country db entry that matches current_country name
#     current_country = entry['Country Name']
#     existing_country = Country.where("name LIKE (?)", "%#{current_country}%")
#     # if there is no match in the db for current_country, add to failure count
#     # otherwise add the GDP value from current_country item to existing country
#     if existing_country.nil?
#       not_found_count += 1
#     else
#       existing_country.update(gdp: entry['Value'].to_f)
#       found_count += 1
#     end
#   end
# end
#
# puts "Added GDP data for #{found_count} countries."
# puts "GDP data unavailable for #{Country.count - found_count} countries."
# puts '-' * 50
#
# grab .json airport data and build new Airport objects
# airport_url = 'https://gist.githubusercontent.com/tdreyno/4278655/raw/7b0762c09b519f40397e4c3e100b097d861f5588/airports.json'
# airport_uri = URI(airport_url)
# airport_response = Net::HTTP.get(airport_uri)
# airport_hash = JSON.parse(airport_response)
#
# found_count = 0
# not_found_count = 0
#
# # airports are built through Country objects to establish an association
# airport_hash.each do |airport|
#   current_airport_country = airport['country']
#   airport_country = Country.where('name LIKE (?)', "%#{current_airport_country}%").first
#   if airport_country.nil?
#     not_found_count += 1
#   else
#     # create default name if official airport name is missing
#     name = if airport['name'] == ''
#              "#{airport['country']} #{airport['code']}"
#            else
#              airport['name']
#            end
#     # build a new airport using the matching country
#     new_airport = airport_country.airports.build(code: airport['code'], name: name, city: airport['city'])
#     new_airport.save
#     found_count += 1
#   end
# end
#
# puts "Matched #{found_count} airports to countries."
# puts "Matches failed for #{not_found_count} airports."
# puts '-' * 50

# grab .json university data and build new University objects
university_url = 'https://raw.githubusercontent.com/Hipo/university-domains-list/master/world_universities_and_domains.json'
university_uri = URI(university_url)
university_response = Net::HTTP.get(university_uri)
university_hash = JSON.parse(university_response)

found_count = 0
not_found_count = 0

# universities are built through Country objects to establish an association
university_hash.each do |university|
  current_university_country = university['country']
  university_country = Country.where('name LIKE (?)', "%#{current_university_country}%").first

  if university_country.nil?
    not_found_count += 1
  else
    # build a university using the matching Country
    new_university = university_country.universities.build(code: university['alpha_two_code'], name: university['name'])
    puts new_university.code
    new_university.save
    found_count += 1
  end
end

puts "Matched #{found_count} universities to countries."
puts "Matches failed for #{not_found_count} universities."
puts '-' * 50
