//
//  FixedBasedPartTime.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-16.
//

import Foundation
class FixedBasedPartTime: PartTime
{
    var fixedAmount: Double
    

    init(empID: Int,name: String, age:Int, fixedAmount: Double, rate: Double, hoursWorked: Float)
    {
        self.fixedAmount = fixedAmount
        super.init(empID: empID,name: name, age: age, rate: rate, hoursWorked: hoursWorked)

//    init(name: String, age:Int, fixedAmount: Double, rate: Double, hoursWorked: Float)
        
    
    }
    func printMyData()
    {
        print("NAME: \(name) \n AGE: \(age) \n FIXED AMOUNT: \(fixedAmount) \n HOURS WORKED: \(hoursWorked) \n RATE: \(rate)")
    }
    
    
}
