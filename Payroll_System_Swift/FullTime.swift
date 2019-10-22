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
    
    init(empID: Int, name: String, age: Int, salary: Double, bonus: Double, emptype: TypeofEmployee)
    {
        self.salary=salary
        self.bonus=bonus
        super.init(empID: empID, name: name, age: age, emptype: emptype)
    }
}
