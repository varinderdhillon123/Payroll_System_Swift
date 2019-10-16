//
//  CommissionBasedPartTime.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-16.
//

import Foundation
class CommissionBasedPartTime: PartTime {
    var commissionPerc: Double
    //  print("commission based part time class")
    
    init(name: String, age:Int, rate: Double, hoursWorked: Float, commissionPerc: Double)
    {
        self.commissionPerc = commissionPerc
        super.init(name: name, age: age, rate: rate, hoursWorked: hoursWorked)
    }
    func calcEarnings() -> Double
    {
        return (rate * Double(hoursWorked) + commissionPerc)
    }
    func printMyData()
    {
        print("NAME: \(name) \n AGE: \(age) \n Commission Percentage: \(commissionPerc) \n HOURS WORKED: \(hoursWorked) \n RATE: \(rate)")
        print("Total Earnings: \(calcEarnings())")
    }
    
}
