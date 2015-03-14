# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

Departure.all.destroy_all
Arrival.all.destroy_all
Flight.all.destroy_all
Airline.all.destroy_all
Passenger.all.destroy_all


airlines = Airline.create([
	{ name: 'Oceanic Airlines' }, 
	{ name: 'Mohawk Airlines' }, 
	{ name: 'Acme low cost air' }, 
	{ name: 'Lynkxjet' }])

flights = Flight.create([
	{number: 815, airline: airlines[0]}, 
	{number: 1330, airline: airlines[3]}, 
	{number: 5022, airline: airlines[1]}, 
	{number: 64370, airline: airlines[2]}, 
	{number: 1472, airline: airlines[1]}, 
	{number: 42384, airline: airlines[0]}, 
	{number: 39774, airline: airlines[3]},
	{number: 44381, airline: airlines[2]}]) 

arrivals = Arrival.create([
	{flight: flights[1], date: Faker::Time.between(2.days.ago, Time.now, :night), status: :on_time}, 
	{flight: flights[4], date: Faker::Time.between(2.days.ago, Time.now, :night), status: :landing}, 
	{flight: flights[2], date: Faker::Time.between(2.days.ago, Time.now, :night), status: :delayed}, 
	{flight: flights[0], date: Faker::Time.between(2.days.ago, Time.now, :night), status: :on_time}, 
	{flight: flights[7], date: Faker::Time.between(2.days.ago, Time.now, :night), status: :on_time},
	{flight: flights[6], date: Faker::Time.between(2.days.ago, Time.now, :night), status: :landed}, 
	{flight: flights[3], date: Faker::Time.between(2.days.ago, Time.now, :night), status: :landed},
	{flight: flights[5], date: Faker::Time.between(2.days.ago, Time.now, :night), status: :delayed}]) 

departures = Departure.create([
	{flight: flights[1], date: Faker::Time.between(2.days.ago, Time.now, :night), status: :boarding}, 
	{flight: flights[7], date: Faker::Time.between(2.days.ago, Time.now, :night), status: :on_gate},
	{flight: flights[0], date: Faker::Time.between(2.days.ago, Time.now, :night), status: :closed}, 
	{flight: flights[2], date: Faker::Time.between(2.days.ago, Time.now, :night), status: :took_off}, 
	{flight: flights[5], date: Faker::Time.between(2.days.ago, Time.now, :night), status: :closed}, 
	{flight: flights[3], date: Faker::Time.between(2.days.ago, Time.now, :night), status: :on_gate},
	{flight: flights[6], date: Faker::Time.between(2.days.ago, Time.now, :night), status: :closed}, 
	{flight: flights[4], date: Faker::Time.between(2.days.ago, Time.now, :night), status: :closed}]) 

passenger = flights.each do |flight|
	10.times do
			Passenger.create([{flight: flight, name: Faker::Name.name, passport: Faker::Lorem.characters(12)}])
	end
end