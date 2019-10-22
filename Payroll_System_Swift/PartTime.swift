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
    
    init(rate: Double, hoursWorked: Float, name: String, age : Int, earnings : Double)
    {
        self.rate = rate
        self.hoursWorked = hoursWorked
        super.init(name: name, age: age, earnings: earnings)

    }
}
