# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Resume.destroy_all
JobType.destroy_all

 5.times do
 User.create(
    first_name: Faker::Name.unique.first_name, 
    last_name: Faker::Name.unique.last_name, 
    address: Faker::Address.full_address, 
    phone_number: Faker::PhoneNumber.cell_phone, 
    email: Faker::Internet.email, 
    password: "password"
 ) 
 end

 resume1 = Resume.create(
   user_id: User.first.id,
   bio: Faker::Lorem.paragraph(sentence_count: 2),
   experience: Faker::Job.title,
   education: Faker::Educator.university,
   skills: Faker::Job.key_skill,
   misc:Faker::Lorem.paragraph(sentence_count: 2)
 )

 resume2 = Resume.create(
  user_id: User.second.id,
  bio: Faker::Lorem.paragraph(sentence_count: 2),
  experience: Faker::Job.title,
  education: Faker::Educator.university,
  skills: Faker::Job.key_skill,
  misc:Faker::Lorem.paragraph(sentence_count: 2)
)

resume3 = Resume.create(
  user_id: User.third.id,
  bio: Faker::Lorem.paragraph(sentence_count: 2),
  experience: Faker::Job.title,
  education: Faker::Educator.university,
  skills: Faker::Job.key_skill,
  misc:Faker::Lorem.paragraph(sentence_count: 2)
)

resume4 = Resume.create(
  user_id: User.fourth.id,
  bio: Faker::Lorem.paragraph(sentence_count: 2),
  experience: Faker::Job.title,
  education: Faker::Educator.university,
  skills: Faker::Job.key_skill,
  misc:Faker::Lorem.paragraph(sentence_count: 2)
)

resume5 = Resume.create(
  user_id: User.fifth.id,
  bio: Faker::Lorem.paragraph(sentence_count: 2),
  experience: Faker::Job.title,
  education: Faker::Educator.university,
  skills: Faker::Job.key_skill,
  misc:Faker::Lorem.paragraph(sentence_count: 2)
)

type1 = JobType.create(
  resume_id: Resume.first.id,
  industry: "Technology"
)

type2 = JobType.create(
  resume_id: Resume.second.id,
  industry: "Art"
)

type3 = JobType.create(
  resume_id: Resume.third.id,
  industry: "General"
)

type4 = JobType.create(
  resume_id: Resume.fourth.id,
  industry: "Technology"
)

type5 = JobType.create(
  resume_id: Resume.fifth.id,
  industry: "Technology"
)