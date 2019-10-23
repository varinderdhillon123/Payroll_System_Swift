//
//  PartTime.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-16.
//

import Foundation
class PartTime: Employee
{
    var rate: Double!
    var hoursWorked: Float!

    init(empID: Int,name: String, age: Int, rate: Double, hoursWorked: Float, emptype: TypeofEmployee)
    {
        self.rate = rate
        self.hoursWorked = hoursWorked
         super.init(empID: empID, name: name, age: age, emptype: emptype)
    }
    
    override func printMyData() 
    {
       super.printMyData()
        print("Rate per hour: \(rate!)")
         print("No. of hours: \(hoursWorked!.addHours())")
    }

}
