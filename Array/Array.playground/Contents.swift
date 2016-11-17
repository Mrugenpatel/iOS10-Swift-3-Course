//: Playground - noun: a place where people can play

import UIKit

var employee1Salary = 10000.0
var employee2Salary = 54000.0
var employee3Salary = 32000.0
var employee4Salary = 1000.0

var employeeSalary: [Double] = [100000.0, 54000.0, 32000.0, 1000.0]


//Array count
employeeSalary.count

//ADD to array
employeeSalary.append(36000.45)

//REMOVE from array
employeeSalary.remove(at: 2)

//REVERSE array
employeeSalary.reverse()


//MAX and MIN
employeeSalary.max()
employeeSalary.min()

//Declare empty array
var students = [String]()

print(students.count)
students.append("tomas")
print(students.count)
students.append("joanna")
print(students.count)
students.append("ruth")
print(students.count)
