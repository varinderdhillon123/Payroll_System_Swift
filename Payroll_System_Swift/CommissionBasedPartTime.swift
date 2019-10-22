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
    
    init(empID: Int,name: String, age:Int, rate: Double, hoursWorked: Float, commissionPerc: Double, emptype: TypeofEmployee)
    {
        self.commissionPerc = commissionPerc
        super.init(empID: empID,name: name, age: age, rate: rate, hoursWorked: hoursWorked, emptype: emptype)
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
