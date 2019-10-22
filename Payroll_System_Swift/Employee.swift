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
    //var earnings: Double
    
    init(empID: Int, name: String, age:Int, emptype: TypeofEmployee) {
        self.empID = empID
        self.name = name
        self.age = age
        self.emptype = emptype
        //self.earnings=earnings
    }
    
}
