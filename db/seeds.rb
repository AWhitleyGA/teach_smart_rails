# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Membership.destroy_all
Course.destroy_all
Assignment.destroy_all
Grade.destroy_all
Lesson.destroy_all
Attendance.destroy_all
Resource.destroy_all

User.create!([
  {
    prefix: 'Mr.',
    first_name: 'Andrew',
    last_name: 'Whitley',
    phone_number: '999-999-9999'
  },
  {
    prefix: 'Mr.',
    first_name: 'Terrance',
    last_name: 'Bullock',
    phone_number: '333-333-3333'
  }
])

Course.create!({
  name: 'PC600Q',
  description: 'Personal Computer Specialist Program',
  location: '1720 I Street NW, Washington, DC 20006'
})

Membership.create!([
  {
    user_id: 1,
    course_id: 1,
    role: 'Instructor',
    is_admin: true
  },
  {
    user_id: 2,
    course_id: 1,
    role: 'Student',
    is_admin: false
  }
])

Lesson.create!([
    {
      course_id: 1,
      name: 'Intro to PC600Q',
      description: 'Introduction to course concepts, review of syllabus, first lesson',
      body: 'Welcome to the PC Specialist Program. Please review the documents listed in the lesson resources.'
    }
])

Attendance.create!([
  {
    membership_id: 2,
    lesson_id: 1
  }
])

Assignment.create!([
  {
    course_id: 1,
    name: 'HW1'
  }
])

Grade.create!([
  {
    membership_id: 2,
    assignment_id: 1
  }
])
