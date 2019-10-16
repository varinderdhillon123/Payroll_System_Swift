//
//  CommissionBasedPartTime.swift
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
        super.init(name: name, age: age, earnings: 0.0, rate: 0.0, hoursWorked: 0.0)
    }
    func printMyData()
    {
        print("NAME: \(name) \n AGE: \(age) \n FIXED AMOUNT: \(fixedAmount) \n HOURS WORKED: \(hoursWorked) \n RATE: \(rate)")
    }
    
    
}
