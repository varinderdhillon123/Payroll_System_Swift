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

    init(empID: Int,name: String, age: Int, rate: Double, hoursWorked: Float, emptype: TypeofEmployee) //, vehicle: Vehicle?)
    {
        self.rate = rate
        self.hoursWorked = hoursWorked
        super.init(empID: empID, name: name, age: age, emptype: emptype)  //, vehicle: vehicle)
    }
    
    override func printMyData() 
    {
       super.printMyData()

        print("Rate per hour: \(rate!.Currency())")
         print("No. of hours: \(hoursWorked!.addHours())")

    }

}
