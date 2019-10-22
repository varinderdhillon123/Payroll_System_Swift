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
    

    init(empID: Int,name: String, age: Int, rate: Double, hoursWorked: Float)
    {
        self.rate = rate
        self.hoursWorked = hoursWorked
        super.init(empID: empID, name: name, age: age)


    }
    
    override func printMyData() -> String
    {
       super.printMyData()
    }
}
