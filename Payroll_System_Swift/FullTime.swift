//
//  FullTime.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-16.
//

import Foundation
class FullTime: Employee
{
    var salary: Double!
    var bonus: Double!
    
    init(name: String, age: Int, earnings: Double, salary: Double!, bonus: Double!)
    {
        self.salary=salary
        self.bonus=bonus
        super.init(name: name, age: age, earnings: earnings)
    }
}
