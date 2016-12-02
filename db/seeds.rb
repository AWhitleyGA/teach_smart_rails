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
    phone_number: '999-999-9999',
    email: 'andrew@gmail.com',
    password: 'password'
  },
  {
    prefix: 'Ms.',
    first_name: 'Pamela',
    last_name: 'Divel',
    phone_number: '999-999-9999',
    email: 'pamela@gmail.com',
    password: 'password'
  },
  {
    prefix: 'Mr.',
    first_name: 'Terrance',
    last_name: 'Bullock',
    phone_number: '333-333-3333',
    email: 'terrance@gmail.com',
    password: 'password'
  },
  {
    prefix: 'Ms.',
    first_name: 'Tina',
    last_name: 'Gaddy',
    phone_number: '333-333-3333',
    email: 'tina@gmail.com',
    password: 'password'
  },
  {
    prefix: 'Ms.',
    first_name: 'Zaineb',
    last_name: 'Taleb',
    phone_number: '333-333-3333',
    email: 'zaineb@gmail.com',
    password: 'password'
  },
  {
    prefix: 'Mr.',
    first_name: 'Brad',
    last_name: 'Boy',
    phone_number: '333-333-3333',
    email: 'brad@gmail.com',
    password: 'password'
  },
  {
    prefix: 'Ms.',
    first_name: 'Milica',
    last_name: 'Mitic',
    phone_number: '333-333-3333',
    email: 'milica@gmail.com',
    password: 'password'
  },
])

Course.create!([
  {
  name: 'PC-600Q',
  description: 'Personal Computer Specialist Program',
  location: '1720 I Street NW, Washington, DC 20006'
  },
  {
  name: 'MOA-720',
  description: 'Medical Office Administration Program',
  location: '1720 I Street NW, Washington, DC 20006'
  },
  {
  name: 'MA-720',
  description: 'Medical Assistant Program',
  location: '1720 I Street NW, Washington, DC 20006'
  },
  {
  name: 'MBC-720',
  description: 'Medical Billing & Coding',
  location: '1720 I Street NW, Washington, DC 20006'
  }
])

Membership.create!([
  {
    user_id: 1,
    course_id: 1,
    role: 'Instructor',
    is_admin: true
  },
  {
    user_id: 1,
    course_id: 2,
    role: 'Instructor',
    is_admin: true
  },
  {
    user_id: 2,
    course_id: 3,
    role: 'Instructor',
    is_admin: true
  },
  {
    user_id: 2,
    course_id: 4,
    role: 'Instructor',
    is_admin: true
  },
  {
    user_id: 3,
    course_id: 1,
    role: 'Student',
    is_admin: false
  },
  {
    user_id: 4,
    course_id: 2,
    role: 'Student',
    is_admin: false
  },
  {
    user_id: 5,
    course_id: 3,
    role: 'Student',
    is_admin: false
  },
  {
    user_id: 6,
    course_id: 4,
    role: 'Student',
    is_admin: false
  },
  {
    user_id: 7,
    course_id: 1,
    role: 'Student',
    is_admin: false
  }
])

Lesson.create!([
    {
      course_id: 1,
      name: 'Intro to PC600Q',
      start_time: DateTime.strptime("01/12/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/12/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'Introduction to course concepts, review of syllabus, first lesson',
      body: 'Welcome to the PC Specialist Program. Please review the documents listed in the lesson resources.'
    },
    {
      course_id: 1,
      name: 'Microsoft Excel - Formulas and Functions',
      start_time: DateTime.strptime("01/13/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/13/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'The basics of constructing custom formulas in Excel to perform spreadsheet calculations',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 1,
      name: 'Microsoft Word - Document Writing, Formatting, and Editing',
      start_time: DateTime.strptime("01/14/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/14/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'The basics of Word\'s formatting tools to create, edit, and publish professional documents',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 2,
      name: 'Intro to MOA-720',
      start_time: DateTime.strptime("01/12/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/12/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'Introduction to course concepts, review of syllabus, first lesson',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 2,
      name: 'Medical Terminology 101',
      start_time: DateTime.strptime("01/13/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/13/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'The basics of medical terminology and categorization',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 2,
      name: 'Billing and Coding',
      start_time: DateTime.strptime("01/14/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/14/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'Intro to medical insurance coding and processing',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 3,
      name: 'Intro to MA-720',
      start_time: DateTime.strptime("01/12/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/12/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'Introduction to course concepts, review of syllabus, first lesson',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 3,
      name: 'Medical Terminology 101',
      start_time: DateTime.strptime("01/13/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/13/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'The basics of medical terminology and categorization',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 3,
      name: 'Billing and Coding',
      start_time: DateTime.strptime("01/14/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/14/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'Intro to medical insurance coding and processing',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 4,
      name: 'Intro to MBC-720',
      start_time: DateTime.strptime("01/12/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/12/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'Introduction to course concepts, review of syllabus, first lesson',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 4,
      name: 'Intro to Excel',
      start_time: DateTime.strptime("01/13/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/13/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'The basics of spreadsheet set-up, formatting, and calculations',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 4,
      name: 'Billing and Coding',
      start_time: DateTime.strptime("01/14/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/14/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'Intro to medical insurance coding and processing',
      body: 'Please review the documents listed below.'
    }
])

Assignment.create!([
  {
    course_id: 1,
    name: 'HW1'
  },
  {
    course_id: 1,
    name: 'HW2'
  },
  {
    course_id: 1,
    name: 'HW3'
  },
  {
    course_id: 1,
    name: 'HW4'
  },
  {
    course_id: 1,
    name: 'HW5'
  },
  {
    course_id: 2,
    name: 'HW1'
  },
  {
    course_id: 2,
    name: 'HW2'
  },
  {
    course_id: 2,
    name: 'HW3'
  },
  {
    course_id: 2,
    name: 'HW4'
  },
  {
    course_id: 2,
    name: 'HW5'
  },
  {
    course_id: 3,
    name: 'HW1'
  },
  {
    course_id: 3,
    name: 'HW2'
  },
  {
    course_id: 3,
    name: 'HW3'
  },
  {
    course_id: 3,
    name: 'HW4'
  },
  {
    course_id: 3,
    name: 'HW5'
  },
  {
    course_id: 4,
    name: 'HW1'
  },
  {
    course_id: 4,
    name: 'HW2'
  },
  {
    course_id: 4,
    name: 'HW3'
  },
  {
    course_id: 4,
    name: 'HW4'
  },
  {
    course_id: 4,
    name: 'HW5'
  }
])
