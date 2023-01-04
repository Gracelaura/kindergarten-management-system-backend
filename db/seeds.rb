# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying"

Teacher.destroy_all
Student.destroy_all
Classroom.destroy_all
Parent.destroy_all
Attendance.destroy_all
Discipline.destroy_all
ParentStudent.destroy_all

puts "Done destroying"

puts "Seeding..."


teacher1 = Teacher.create(
    first_name: "Luke",
    last_name: "Shaw",
    career_name: "English",
    password: "3456766",
    phone_number: "07867465376",
    email: "lukeshaw@gmail.com",
    gender: "male",
    
)
teacher2 = Teacher.create(
    first_name: "Darwin",
    last_name: "Ken",
    career_name: "Play group leader",
    password: "125346",
    phone_number: "0754372656",
    email: "lewisdarwin@gmail.com",
    gender: "male",
    
)
teacher3 = Teacher.create(
    first_name: "Timothy",
    last_name: "Rogers",
    career_name: "Math",
    password: "mkjr12",
    phone_number: "0754372656",
    email: "timothy@gmail.com",
    gender: "male",
    
)

    classroom1 = Classroom.create(
    name: "PP1",
    teacher_id: teacher1.id,
    )


    classroom2 = Classroom.create(
    name: "PP2",
    teacher_id: teacher2.id,
    )  

    classroom3 = Classroom.create(
    name: "PP3",
    teacher_id: teacher3.id
    )
   


    

    student1 = Student.create(
        first_name: "Faith",
        second_name: "shahh",
        surname: "Martind",
        age: 3,
        description: " Faith is is an active learner who loves to get hands-on and throw herself into a task with enthusiasm",
        admission_number: 4567,
        
        classroom_id: classroom1.id
        
        
    )
    
    student2 = Student.create(
        first_name: "Glory",
        second_name: "Dermen",
        surname: "Cox",
        age: 4,
        description: " Glory is an ambitious student who will push herself to meet her personal best at all times",
        admission_number: 4568,
        classroom_id: classroom2.id
        
    )
    
    student3 = Student.create(
        first_name: "Peter",
        second_name: "Drury",
        surname: "Fisher",
        age: 5,
        description: " Peter is hardworking student",
        admission_number: 4569,
        classroom_id: classroom3.id
                
        
    )
    
    student4 = Student.create(
        first_name: "James",
        second_name: "Martin",
        surname: "Fowler",
        age: 4,
        description: " James is an average and humble student",
        admission_number: 4570,
        classroom_id: classroom3.id
        
    )
   

   
    parent1 = Parent.create(
        first_name: "Jancy",
        last_name: "Mongy",
        phone_number: 765478643,
        password: "334354",
        
    )
    parent2 = Parent.create(
        first_name: "David",
        last_name: "Makali",
        phone_number: 743564786,
        password: "765476",
        

    )
    parent3 = Parent.create(
        first_name: "Rehema",
        last_name: "Angela",
        phone_number: 765473564,
        password: "89765647",
        
    )
    parent4 = Parent.create(
        first_name: "James",
        last_name: "Aquine",
        phone_number: 789657463,
        password: "45362453",
        
    )
    parent5 = Parent.create(
        first_name: "Steve",
        last_name: "Havey",
        phone_number: 7107896457,
        password: "65487835",
        
    )

    attendance1 = Attendance.create(
        classroom_id: classroom1.id,
        student_name: "Glory Sparks",
        student_id: student1.id,
        status: "Present",
        date: 1142022,
    )
    attendance2 = Attendance.create(
       classroom_id: classroom1.id,
        student_name: "James Martins",
        student_id: student2.id,
        status: "Present",
        date: 1142022,

    )
    attendance3 = Attendance.create(
        classroom_id: classroom1.id,
        student_name: "Adams Smith",
        student_id: student3.id,
        status: "Present",
        date: 1142022,
    )
    attendance4 = Attendance.create(
        classroom_id: classroom1.id,
        student_name: "Aisha Barracks",
        student_id: student4.id,
        status: "Present",
        date: 1142022,
    )
    attendance5 = Attendance.create(
        classroom_id: classroom1.id,
        student_name: "Dan Daniels",
        student_id: student3.id,
        status: "Present",
        date: 1142022,
    )
    attendance6 = Attendance.create(
        classroom_id: classroom1.id,
        student_name: "Angie Angel",
        student_id: student2.id,
        status: "Present",
        date: 1142022,
    )

    disciplines = Discipline.create([{
        student_id: student1.id,
        title: "Student",
        description: "Excellent",
    },
    {
        student_id: student2.id,
        title: "Student",
        description: "Average",
    },
    {
        student_id: student3.id,
        title: "Student",
        description: "Excellent",
    },
    {
        student_id: student4.id,
        title: "Student",
        description: "Very good",
    },
    {
        student_id: student3.id,
        title: "Student",
        description: "Excellent",
    }])

    puts "Seeding is Complete"


    ParentStudent.create([{
     parent_id: parent1.id,
     student_id: student1.id
    }, 
    {
        parent_id: parent2.id,
        student_id: student2.id
    },
    {
        parent_id: parent1.id,
        student_id: student1.id
    },
    {
        parent_id: parent3.id,
        student_id: student3.id
    },
    {
        parent_id: parent4.id,
        student_id: student4.id
    },
    {
        parent_id: parent5.id,
        student_id: student3.id
    }
    ])