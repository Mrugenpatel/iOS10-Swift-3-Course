//: Playground - noun: a place where people can play

import UIKit

//FIRST BAD WAY
var employee1Salary = 10000.10
var employee2Salary = 20000.20
var employee3Salary = 30000.30
var employee4Salary = 40000.40

employee1Salary = employee1Salary + (employee1Salary * 0.10)


//SECOND BAD WAY
var salaries = [10000.10, 20000.20, 30000.30, 40000, 4010000.10, 20000.20, 30000.30, 40000.40, 4010000.10, 20000.20, 30000.30, 40000.40, 4010000.10, 20000.20, 30000.30, 40000.40]

salaries[0] = salaries[0] + (salaries[0] * 0.10)


                                            //LOOPS
var index = 0

repeat {
    salaries[index] = salaries[index] + (salaries[index] * 0.10)
    index += 1
} while (index < salaries.count)

print(salaries)

                                        //FOR IN LOOP

for x in 1...5 {  //with 1...5 inclusive 1, 2, 3, 4, 5
    print("Index: \(x)")
}

for x in 1..<5 {  //does not include the last value
    print("Index: \(x)")
}

for i in 0..<salaries.count {
    salaries[i] = salaries[i] + (salaries[i] * 0.10)
}

print(salaries)

                                        //FOR EACH LOOP

for salary in salaries {
    print("Salary: \(salary)")
}











