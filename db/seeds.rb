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
      url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TRm9fcHlPT0ZxZWs?usp=sharing',
      body: 'Welcome to the PC Specialist Program. Please review the documents listed in the lesson resources.'
    },
    {
      course_id: 1,
      name: 'Microsoft Excel - Formulas and Functions',
      start_time: DateTime.strptime("01/13/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/13/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'The basics of constructing custom formulas in Excel to perform spreadsheet calculations',
      url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TRm9fcHlPT0ZxZWs?usp=sharing',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 1,
      name: 'Microsoft Word - Document Writing, Formatting, and Editing',
      start_time: DateTime.strptime("01/14/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/14/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'The basics of Word\'s formatting tools to create, edit, and publish professional documents',
      url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TRm9fcHlPT0ZxZWs?usp=sharing',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 2,
      name: 'Intro to MOA-720',
      start_time: DateTime.strptime("01/12/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/12/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'Introduction to course concepts, review of syllabus, first lesson',
      url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TRm9fcHlPT0ZxZWs?usp=sharing',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 2,
      name: 'Medical Terminology 101',
      start_time: DateTime.strptime("01/13/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/13/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'The basics of medical terminology and categorization',
      url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TRm9fcHlPT0ZxZWs?usp=sharing',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 2,
      name: 'Billing and Coding',
      start_time: DateTime.strptime("01/14/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/14/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'Intro to medical insurance coding and processing',
      url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TRm9fcHlPT0ZxZWs?usp=sharing',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 3,
      name: 'Intro to MA-720',
      start_time: DateTime.strptime("01/12/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/12/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'Introduction to course concepts, review of syllabus, first lesson',
      url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TbUdLQzdnYmZCb0k?usp=sharing',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 3,
      name: 'Medical Terminology 101',
      start_time: DateTime.strptime("01/13/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/13/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'The basics of medical terminology and categorization',
      url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TbUdLQzdnYmZCb0k?usp=sharing',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 3,
      name: 'Billing and Coding',
      start_time: DateTime.strptime("01/14/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/14/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'Intro to medical insurance coding and processing',
      url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TbUdLQzdnYmZCb0k?usp=sharing',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 4,
      name: 'Intro to MBC-720',
      start_time: DateTime.strptime("01/12/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/12/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'Introduction to course concepts, review of syllabus, first lesson',
      url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TbUdLQzdnYmZCb0k?usp=sharing',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 4,
      name: 'Intro to Excel',
      start_time: DateTime.strptime("01/13/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/13/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'The basics of spreadsheet set-up, formatting, and calculations',
      url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TbUdLQzdnYmZCb0k?usp=sharing',
      body: 'Please review the documents listed below.'
    },
    {
      course_id: 4,
      name: 'Billing and Coding',
      start_time: DateTime.strptime("01/14/2017 10:00", "%m/%d/%Y %H:%M"),
      end_time: DateTime.strptime("01/14/2017 16:00", "%m/%d/%Y %H:%M"),
      description: 'Intro to medical insurance coding and processing',
      url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TbUdLQzdnYmZCb0k?usp=sharing',
      body: 'Please review the documents listed below.'
    }
])

Assignment.create!([
  {
    course_id: 1,
    name: 'HW1 - Entering Data into Excel',
    description: 'Excel FastCourse Level 1, Lessons 1 & 2',
    assigned_on: DateTime.strptime("01/12/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/19/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TWlgxcUkwVkdxOVU?usp=sharing'
  },
  {
    course_id: 1,
    name: 'HW2 - Formulas and Functions',
    description: 'Excel FastCourse Level 1, Lesson 3',
    assigned_on: DateTime.strptime("01/13/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/20/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TVGJRS3d2WnRLb2s?usp=sharing'
  },
  {
    course_id: 1,
    name: 'HW3 - Formatting Workbooks',
    description: 'Excel FastCourse Level 1, Lesson 4',
    assigned_on: DateTime.strptime("01/14/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/21/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TdW5FNzFfejlxODQ?usp=sharing'
  },
  {
    course_id: 1,
    name: 'HW4 - Customizing Appearance',
    description: 'Excel FastCourse Level 1, Lessons 5',
    assigned_on: DateTime.strptime("01/15/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/22/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TTVZUWmVjbTBPNlU?usp=sharing'
  },
  {
    course_id: 1,
    name: 'HW5 - Creating Charts',
    description: 'Excel FastCourse Level 1, Lessons 6',
    assigned_on: DateTime.strptime("01/16/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/23/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TLWlxTVF1bmQ4OU0?usp=sharing'
  },
  {
    course_id: 2,
    name: 'HW1 - Entering Data into Excel',
    description: 'Excel FastCourse Level 1, Lessons 1 & 2',
    assigned_on: DateTime.strptime("01/12/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/19/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TWlgxcUkwVkdxOVU?usp=sharing'
  },
  {
    course_id: 2,
    name: 'HW2 - Formulas and Functions',
    description: 'Excel FastCourse Level 1, Lesson 3',
    assigned_on: DateTime.strptime("01/13/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/20/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TVGJRS3d2WnRLb2s?usp=sharing'
  },
  {
    course_id: 2,
    name: 'HW3 - Formatting Workbooks',
    description: 'Excel FastCourse Level 1, Lesson 4',
    assigned_on: DateTime.strptime("01/14/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/21/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TdW5FNzFfejlxODQ?usp=sharing'
  },
  {
    course_id: 2,
    name: 'HW4 - Customizing Appearance',
    description: 'Excel FastCourse Level 1, Lessons 5',
    assigned_on: DateTime.strptime("01/15/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/22/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TTVZUWmVjbTBPNlU?usp=sharing'
  },
  {
    course_id: 2,
    name: 'HW5 - Creating Charts',
    description: 'Excel FastCourse Level 1, Lessons 6',
    assigned_on: DateTime.strptime("01/16/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/23/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TLWlxTVF1bmQ4OU0?usp=sharing'
  },
  {
    course_id: 3,
    name: 'HW1 - Setting up a Word Document',
    description: 'Word FastCourse Level 1, Lesson 1',
    assigned_on: DateTime.strptime("01/12/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/19/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TUDdHRWh1MlllenM?usp=sharing'
  },
  {
    course_id: 3,
    name: 'HW2 - Document Formatting',
    description: 'Word FastCourse Level 1, Lesson 2',
    assigned_on: DateTime.strptime("01/13/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/20/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TRmwwLWVkdlZ4R3c?usp=sharing'
  },
  {
    course_id: 3,
    name: 'HW3 - Document Structure',
    description: 'Word FastCourse Level 1, Lesson 3',
    assigned_on: DateTime.strptime("01/14/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/21/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TUGg2YmVlRTdvc3c?usp=sharing'
  },
  {
    course_id: 3,
    name: 'HW4 - Document Navigation, Sectioning, and Pagination',
    description: 'Word FastCourse Level 1, Lesson 4',
    assigned_on: DateTime.strptime("01/15/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/22/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TYTZxVkhQTGJPNXM?usp=sharing'
  },
  {
    course_id: 3,
    name: 'HW5 - Mail Merge and Templating',
    description: 'Word FastCourse Level 1, Lesson 5',
    assigned_on: DateTime.strptime("01/16/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/23/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TNVJCTm84NjNjNW8?usp=sharing'
  },
  {
    course_id: 4,
    name: 'HW1 - Setting up a Word Document',
    description: 'Word FastCourse Level 1, Lesson 1',
    assigned_on: DateTime.strptime("01/12/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/19/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TUDdHRWh1MlllenM?usp=sharing'
  },
  {
    course_id: 4,
    name: 'HW2 - Document Formatting',
    description: 'Word FastCourse Level 1, Lesson 2',
    assigned_on: DateTime.strptime("01/13/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/20/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TRmwwLWVkdlZ4R3c?usp=sharing'
  },
  {
    course_id: 4,
    name: 'HW3 - Document Structure',
    description: 'Word FastCourse Level 1, Lesson 3',
    assigned_on: DateTime.strptime("01/14/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/21/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TUGg2YmVlRTdvc3c?usp=sharing'
  },
  {
    course_id: 4,
    name: 'HW4 - Document Navigation, Sectioning, and Pagination',
    description: 'Word FastCourse Level 1, Lesson 4',
    assigned_on: DateTime.strptime("01/15/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/22/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TYTZxVkhQTGJPNXM?usp=sharing'
  },
  {
    course_id: 4,
    name: 'HW5 - Mail Merge and Templating',
    description: 'Word FastCourse Level 1, Lesson 5',
    assigned_on: DateTime.strptime("01/16/2017 10:00", "%m/%d/%Y %H:%M"),
    due_on: DateTime.strptime("01/23/2017 10:00", "%m/%d/%Y %H:%M"),
    url: 'https://drive.google.com/drive/folders/0B91wKS1Z8P_TNVJCTm84NjNjNW8?usp=sharing'
  }
])
