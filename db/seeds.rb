# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Physician.destroy_all
Patient.destroy_all

p1 = Patient.create(name: "Tony", age: 27, description: "Influenza")
p2 = Patient.create(name: "Bobby", age: 34, description: "Phyical Testing")
p3 = Patient.create(name: "Brody", age: 32, description: "Flu")
p4 = Patient.create(name: "Jimmy", age: 21, description: "Ulcers")
p5 = Patient.create(name: "Fred", age: 29, description: "Kidney Stone")

5.times do |i|
  physician = Physician.create(name: Faker::Name.name)
  
    Appointment.create(physician_id: physician.id, patient_id: p1.id, time: rand(12))
    Appointment.create(physician_id: physician.id, patient_id: p2.id, time: rand(12))
    Appointment.create(physician_id: physician.id, patient_id: p3.id, time: rand(12))
    Appointment.create(physician_id: physician.id, patient_id: p4.id, time: rand(12))
    Appointment.create(physician_id: physician.id, patient_id: p5.id, time: rand(12))
end

puts Patient.all.length
puts Physician.all.length
puts Appointment.all.length


# puts "PATIENTS INFO: #{Patient.all.length}"
# puts "PHYSICIAN INFO: #{Physician.all.length}"
# puts "TIME INFO: #{Time.all.length}" 

# puts "Physicians Patient: #{Physician.first.patients}"
# puts "Physician Appointment: #{Physician.first.appointments}"