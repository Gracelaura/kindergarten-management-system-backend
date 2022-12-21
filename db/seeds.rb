# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

teachers = Teacher.create([{
    fullname: "Luke shaw",
    career_name: "Mr",
    password: "3456766",
    phone_number: "07867465376",
    email: "lukeshaw@gmail.com",
    gender: "male",
    role: "class teacher",
    },
    {
    fullname: "Lewis Darwin",
    career_name: "Mr",
    password: "125346",
    phone_number: "0754372656",
    email: "lewisdarwin@gmail.com",
    gender: "male",
    role: "class teacher",

    }
    ])

    students = Student.create([{
        first_name: "Faith",
        last_name: "shahh",
        age: 3,
        description: " Faith is is an active learner who loves to get hands-on and throw herself into a task with enthusiasm",
        admission_number: 4567,
        role: "student",
    },
    {
        first_name: "Glory",
        last_name: "Dermen",
        age: 4,
        description: " Glory is an ambitious student who will push herself to meet her personal best at all times",
        admission_number: 4568,
        role: "student",

    },
    {
        first_name: "Peter",
        last_name: "Drury",
        age: 5,
        description: " Peter is hardworking student",
        admission_number: 4569,
        role: "student",

    },
    {
        first_name: "James",
        last_name: "Martin",
        age: 4,
        description: " James is an average and humble student",
        admission_number: 4570,
        role: "student",
    }])

    grades = Grade.create([{
        teacher_id: 2345,
        student_id: 4620,
        name: "James Martin",
    },
    {
        teacher_id: 2346,
        student_id: 4621,
        name: "Glory Patrick",
        
    },
    {
        teacher_id: 2347,
        student_id: 4622,
        name: "Edwin Smith",
    },
    {
        teacher_id: 2348,
        student_id: 4623,
        name: "Camp Deliber",
    },
    {
        teacher_id: 2349,
        student_id: 4624,
        name: "Shagger Denery",
    }])

    parents = Parent.create([{
        first_name: "Jancy",
        last_name: "Mongy",
        phone_number: 765478643,
        password: "334354",
        role: "parent",
    },
    {
        first_name: "David",
        last_name: "Makali",
        phone_number: 743564786,
        password: "765476",
        role: "parent",

    },
    {
        first_name: "Rehema",
        last_name: "Angela",
        phone_number: 765473564,
        password: "89765647",
        role: "parent",
    },
    {
        first_name: "James",
        last_name: "Aquine",
        phone_number: 789657463,
        password: "45362453",
        role: "parent",
    },
    {
        first_name: "Steve",
        last_name: "Havey",
        phone_number: 7107896457,
        password: "65487835",
        role: "parent",
    }])

    attendances = Attendance.create([{
        teacher_id: 5647863,
        student_name: "Glory Sparks",
        status: "Present",
        date: 2022,
    },
    {
        teacher_id: 345675,
        student_name: "James Martin",
        status: "Present",
        date: 2022,

    },
    {
        teacher_id: 456753,
        student_name: "Adams Smith",
        status: "Present",
        date: 2022,
    },
    {
        teacher_id: 88765,
        student_name: "Aisha Barracks",
        status: "Present",
        date: 2022,
    },
    {
        teacher_id: 564736,
        student_name: "Dan Daniels",
        status: "Present",
        date: 2022,
    },
    {
        teacher_id: 456736,
        student_name: "Angie Angel",
        status: "Present",
        date: 2022,
    }])

    disciplines = Discipline.create([{
        student_id: 34564,
        title: "Student",
        description: "Excellent",
    },
    {
        student_id: 34565,
        title: "Student",
        description: "Average",
    },
    {
        student_id: 34566,
        title: "Student",
        description: "Excellent",
    },
    {
        student_id: 34567,
        title: "Student",
        description: "Very good",
    },
    {
        student_id: 34568,
        title: "Student",
        description: "Excellent",
    }])