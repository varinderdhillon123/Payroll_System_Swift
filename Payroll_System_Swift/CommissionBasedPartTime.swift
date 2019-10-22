//
//  CommissionBasedPartTime.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-16.
//

import Foundation
class CommissionBasedPartTime: PartTime
{
    var commissionPerc: Double
   
    init(name: String, age : Int, earnings : Double, rate: Double, hoursWorked: Float, commissionPerc: Double)
        
    {
        self.commissionPerc = commissionPerc
        super.init(rate: rate, hoursWorked: hoursWorked, name: name, age: age, earnings: earnings)
    }
    func calcEarnings() -> Double
    {
        return (rate * Double(hoursWorked) + commissionPerc)
    }
    func printMyData()
    {
        print("Commission Percentage: \(commissionPerc) \n HOURS WORKED: \(hoursWorked) \n RATE: \(rate)")
        print("Total Earnings: \(calcEarnings())")
    }
    
}
