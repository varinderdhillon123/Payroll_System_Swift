//
//  FixedBasedPartTime.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-16.
//

import Foundation
class FixedBasedPartTime: PartTime {
    var fixedAmount: Double
    
    init(name: String, age:Int, fixedAmount: Double, rate: Double, hoursWorked: Float)
    {
        self.fixedAmount = fixedAmount
        super.init(name: name, age: age, rate: rate, hoursWorked: hoursWorked)
    }
    func printMyData()
    {
        print("NAME: \(name) \n AGE: \(age) \n FIXED AMOUNT: \(fixedAmount) \n HOURS WORKED: \(hoursWorked) \n RATE: \(rate)")
    }
    
    
}
