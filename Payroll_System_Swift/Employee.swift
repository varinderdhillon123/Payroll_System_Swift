//
//  Employee.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-16.
//

import Foundation

class Employee: IPrintable
{
    var empID: Int
    var name: String
    var age: Int

init(empID: Int, name: String, age:Int)
    {
        self.empID = empID
        self.name = name
        self.age = age
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
        if(Vehicle is Car)
        {
            let car: Car = Vehicle as! Car
            car.printMyData()
            
        }else if(Vehicle is Motorcycle){
            let motorcycle: Motorcycle = vehicle as! Motorcycle
            motorcycle.printMyData()
            
        }
        
        else
        {
            
            print("Employee Has no Vehicle")
        }
    }
    
}
