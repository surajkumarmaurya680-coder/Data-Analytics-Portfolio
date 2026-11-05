students = [
    ["Amit", "BCA", "Male", 85, 78],
    ["Neha", "BCA", "Female", 92, 88],
    ["Rahul", "BBA", "Male", 65, 72],
    ["Priya", "BCA", "Female", 95, 91],
    ["Rohit", "BBA", "Male", 55, 60],
    ["Anjali", "BCA", "Female", 80, 85],
    ["Vikas", "BBA", "Male", 70, 68],
    ["Pooja", "BCA", "Female", 89, 94],
    ["Suresh", "BBA", "Male", 45, 52],
    ["Kiran", "BCA", "Female", 76, 82]
]


#Task 1: Total Students
total_students = 0
for row in students:
    total_students += 1
# print("Total Students:", total_students)


#Task 2: Total  Python Marks
total_marks = 0
for row in students:
    python_marks = row[3]
    total_marks += python_marks
#print("Total Python Marks:", total_marks)


#Task 3: Total SQL Marks
total_SQL_marks = 0
for row in students:
    SQL_marks = row[4]
    total_SQL_marks += SQL_marks
#print("Total SQL Marks:", total_SQL_marks)    


#Average Python Marks
total_python_marks = 0
for row in students:
    python_marks = row[3]
    total_python_marks += python_marks 
    Average_python_marks = total_python_marks / len(students)
#print("Average Python Marks:", Average_python_marks)


#Average SQL Marks
total_SQL_marks = 0
for row in students:
    SQL_marks = row[4]
    total_SQL_marks += SQL_marks
    Average_SQL_marks = total_SQL_marks / len(students)
#print("Average SQL Marks:", Average_SQL_marks)



#Heighest Python Marks
highest_python_marks = 0
for row in students:
    python_marks = row[3]
    if python_marks > highest_python_marks:
        highest_python_marks = python_marks
#print("Highest Python Marks:", highest_python_marks)



#Lowest SQL marks
Lowest_SQL_marks = 0
for row in students:
    SQL_marks = row[4]
    if SQL_marks > Lowest_SQL_marks:
        Lowest_SQL_marks = SQL_marks
#print("Lowest SQl marks:",Lowest_SQL_marks)


#Course-wise Student Count
course_count = {}
for row in students:
    course = row[1]
    if course in course_count:
        course_count[course] += 1
    else:
        course_count[course] = 1
#print("Course-wise Student Count:", course_count)



#Students scoring above 80 in Python
# print("Students Scoring Above 80 in Python:")

# for row in students:
#     name = row[0]
#     python_marks = row[3]

#     if python_marks > 80:
#         print(name, ":", python_marks)




print("\n========== STUDENT PERFORMANCE REPORT ==========")
print("\nTotal Students:", total_students)
print("Total Python Marks:", total_marks)
print("Total SQL Marks:", total_SQL_marks)
print("\nAverage Python Marks:", Average_python_marks)
print("Average SQL Marks:", Average_SQL_marks)
print("\nHighest Python Marks:", highest_python_marks)
print("Lowest SQL Marks:", Lowest_SQL_marks)
print("\nCourse-wise Student Count:", course_count)

print("\nStudents Scoring Above 80 in Python:")

for row in students:
    name = row[0]
    python_marks = row[3]

    if python_marks > 80:
        print(name, ":", python_marks)
