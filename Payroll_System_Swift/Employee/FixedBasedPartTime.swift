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
    

    init(empID: Int,name: String, age:Int, fixedAmount: Double, rate: Double, hoursWorked: Float, emptype: TypeofEmployee)
    {
        self.fixedAmount = fixedAmount
        super.init(empID: empID,name: name, age: age, rate: rate, hoursWorked: hoursWorked, emptype: emptype)

    }
    override func printMyData()
    {
        super.printMyData()
//        print("NAME: \(name) \n AGE: \(age) \n FIXED AMOUNT: \(fixedAmount) \n HOURS WORKED: \(hoursWorked) \n RATE: \(rate))")
        print("FixedAmount: \(fixedAmount)")
    }
    
    
}
