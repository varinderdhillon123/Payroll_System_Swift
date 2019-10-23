//
//  Employee.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-16.
//

import Foundation




class Employee{

    var empID: Int
    var name: String
    var age: Int
    var emptype: TypeofEmployee
    enum TypeofEmployee{
        case FullTime
        case FixedBasedPartTime
        case CommissionBasedPartTime
        case Intern
    }
    var vehicleDictionary = [Int:Vehicle]()
    var vehicle:Vehicle!

    init(empID: Int, name: String, age:Int, emptype: TypeofEmployee)
     {
        self.empID = empID
        self.name = name
        self.age = age
self.emptype = emptype
     }
    func printMyData()
    {
        print("""
            ---------------------------------------
            Employee Details
            Employee Id: \(empID)
            Name: \(name)
            Age: \(age)
            """)
        
        if vehicleDictionary.isEmpty{
            print("Employee has no Vehicle")
        }
        else if vehicle.
//        if(Vehicle is Car)
//        {
//            let car: Car = Vehicle as! Car
//            car.printMyData()
//
//        }else if(Vehicle is Motorcycle){
//            let motorcycle: Motorcycle = vehicle as! Motorcycle
//            motorcycle.printMyData()
//
//        }
//
//        else
//        {
//
//            print("Employee Has no Vehicle")
//        }

    }
    
}
