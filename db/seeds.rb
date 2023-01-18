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
    career_name: "TR.luke",
    password: "3456766",
    phone_number: "0786746537",
    email: "lukeshaw@gmail.com",
    gender: "male",
    
)
teacher2 = Teacher.create(
    first_name: "Darwin",
    last_name: "Ken",
    career_name: "TR.darwin",
    password: "125346",
    phone_number: "0754372656",
    email: "lewisdarwin@gmail.com",
    gender: "male",
    
)
teacher3 = Teacher.create(
    first_name: "Timothy",
    last_name: "Rogers",
    career_name: "TR.timothy",
    password: "mkjr12",
    phone_number: "0754372656",
    email: "timothy@gmail.com",
    gender: "male",
    
)

teacher4 = Teacher.create(
    first_name: "Geoffrey",
    last_name: "Mokua",
    career_name: "TR.geoffrey",
    password: "grtef12",
    phone_number: "0754543123",
    email: "jeffmokua@gmail.com",
    gender: "male",
    
)
teacher5 = Teacher.create(
    first_name: "Nicholas",
    last_name: "Njeru",
    career_name: "TR.nicholas",
    password: "1267th",
    phone_number: "0710678890",
    email: "nicholas@gmail.com",
    gender: "male",
    
)
teacher6 = Teacher.create(
    first_name: "Grace",
    last_name: "Heggry",
    career_name: "TR.grace",
    password: "tyre234",
    phone_number: "0756342123",
    email: "grace@gmail.com",
    gender: "female",
    
)
    classroom1 = Classroom.create(
    name: "PP1E",
    teacher_id: teacher1.id,
    )

    classroom2 = Classroom.create(
    name: "PP1W",
    teacher_id: teacher2.id,
    )  

    classroom3 = Classroom.create(
    name: "PP2E",
    teacher_id: teacher3.id
    )

    classroom4 = Classroom.create(
    name: "PP2W",
    teacher_id: teacher4.id
    )

    classroom5 = Classroom.create(
    name: "PP3E",
    teacher_id: teacher5.id
    )

    classroom6 = Classroom.create(
    name: "PP3W",
    teacher_id: teacher6.id
    )
   


   
   


    

    student1 = Student.create(
        first_name: "Faith",
        second_name: "shahhh",
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
        classroom_id: classroom4.id
        
    )
    student5 = Student.create(
        first_name: "grace",
        second_name: "Njugush",
        surname: "Hagg",
        age: 3,
        description: " Grace is an average and perfoms well in class",
        admission_number: 4572,
        classroom_id: classroom5.id
        
    )
    student6 = Student.create(
        first_name: "Timo",
        second_name: "Kennedy",
        surname: "Fury",
        age: 5,
        description: " Timo is hradworking",
        admission_number: 4576,
        classroom_id: classroom6.id
        
    )
     student7 = Student.create(
        first_name: "Ronald",
        second_name: "Kibet",
        surname: "Chebosi",
        age: 4,
        description: " Ronald is an average and humble student",
        admission_number: 4573,
        classroom_id: classroom1.id
        
    )
     student8 = Student.create(
        first_name: "Ivan",
        second_name: "Nguyo",
        surname: "James",
        age: 4,
        description: " Ivan is a good leader in class",
        admission_number: 4574,
        classroom_id: classroom1.id
        
    )
     student9 = Student.create(
        first_name: "Dennis",
        second_name: "Sonny",
        surname: "Ouma",
        age: 4,
        description: " Dennis is an average student",
        admission_number: 4575,
        classroom_id: classroom1.id
        
    )
     student10 = Student.create(
        first_name: "Nice",
        second_name: "Angel",
        surname: "Danis",
        age: 4,
        description: " Nice is a good leader in class",
        admission_number: 4576,
        classroom_id: classroom1.id
        
    )
     student11 = Student.create(
        first_name: "Michael",
        second_name: "Herry",
        surname: "Donniry",
        age: 4,
        description: " Michael is a good leader in class",
        admission_number: 4577,
        classroom_id: classroom1.id
        
    )
   
    parent1 = Parent.create(
        first_name: "Jancy",
        last_name: "Mongy",
        phone_number: "765478643",
        password: "334354",
        
    )
    parent2 = Parent.create(
        first_name: "David",
        last_name: "Makali",
        phone_number: "743564786",
        password: "765476",
        

    )
    parent3 = Parent.create(
        first_name: "Rehema",
        last_name: "Angela",
        phone_number: "765473564",
        password: "89765647",
        
    )
    parent4 = Parent.create(
        first_name: "James",
        last_name: "Aquine",
        phone_number: "789657463",
        password: "45362453",
        
    )
    parent5 = Parent.create(
        first_name: "Steve",
        last_name: "Havey",
        phone_number: "7107896457",
        password: "65487835",
        
    )
    parent6 = Parent.create(
        first_name: "Nicholas",
        last_name: "Mjeru",
        phone_number: "7107896453",
        password: "65486578",
        
    )
    parent7 = Parent.create(
        first_name: "Timothy",
        last_name: "Kibet",
        phone_number: "7107896890",
        password: "65487001",
        
    )
    parent8 = Parent.create(
        first_name: "Rona",
        last_name: "Chebosi",
        phone_number: "7107896127",
        password: "65487873",
        
    )

    # attendance1 = Attendance.create(
    #     classroom_id: classroom1.id,
    #     student_name: "Glory Sparks",
    #     student_id: student1.id,
    #     status: "Present",
    #     date: "1142022",
    # )
    # attendance2 = Attendance.create(
    #    classroom_id: classroom2.id,
    #     student_name: "James Martins",
    #     student_id: student2.id,
    #     status: "Present",
    #     date: "1142022",

    # )
    # attendance3 = Attendance.create(
    #     classroom_id: classroom3.id,
    #     student_name: "Adams Smith",
    #     student_id: student3.id,
    #     status: "Present",
    #     date: "1042022",
    # )
    # attendance4 = Attendance.create(
    #     classroom_id: classroom4.id,
    #     student_name: "Aisha Barracks",
    #     student_id: student4.id,
    #     status: "Present",
    #     date: "1142022",
    # )
    # attendance5 = Attendance.create(
    #     classroom_id: classroom5.id,
    #     student_name: "Dan Daniels",
    #     student_id: student5.id,
    #     status: "Present",
    #     date: "1142022",
    # )
    # attendance6 = Attendance.create(
    #     classroom_id: classroom5.id,
    #     student_name: "Angie Angel",
    #     student_id: student2.id,
    #     status: "Present",
    #     date: "1142022",
    # )

    disciplines = Discipline.create([{
        student_id: student1.id,
        title: "Theft",
        date: "11/3/2022",
        description: "The student has been stealing pens from others."
    },
    {
        student_id: student2.id,
        title: "Noise making",
        date: "7/1/2023",
        description: "Student refused to remain quite in class and was sent to detention."
    },
    {
        student_id: student3.id,
        title: "Poor Grade",
        date: "10/1/2023",
        description: "Student got 20% in the final math examination."
    },
    {
        student_id: student4.id,
        title: "Skipping class",
        date: "1/12/2022",
        description: "Student skipped several class to play."
    },
    {
        student_id: student5.id,
        title: "Fighting class",
        date: "1/12/2022",
        description: "Student engages in small fights."
    },
    {
        student_id: student6.id,
        title: "Missed assignment",
        date: "1/12/2022",
        description: "Student missed to do assignments."
    },
    {
        student_id: student7.id,
        title: "Skipping class",
        date: "1/12/2022",
        description: "Student disturbs others while in class."
    },
    {
        student_id: student8.id,
        title: "Coming late",
        date: "1/12/2022",
        description: "Student comes late to school."
    },
    {
        student_id: student9.id,
        title: "Disturbance in class",
        date: "1/12/2022",
        description: "Student disturbs others while in class."
    },
    {
        student_id: student10.id,
        title: "Skipping class",
        date: "1/12/2022",
        description: "Student disturbs others while in class."
    },
    {
        student_id: student11.id,
        title: "Cheating in Exam",
        date: "11/3/2022",
        description: "Student was found with answers in the exam hall and was suspended"
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
        parent_id: parent3.id,
        student_id: student3.id
    },
    {
        parent_id: parent4.id,
        student_id: student4.id
    },
    {
        parent_id: parent5.id,
        student_id: student5.id
    },
    {
        parent_id: parent6.id,
        student_id: student6.id
    },
    {
        parent_id: parent7.id,
        student_id: student7.id
    },
    {
        parent_id: parent8.id,
        student_id: student8.id
    }
    ])