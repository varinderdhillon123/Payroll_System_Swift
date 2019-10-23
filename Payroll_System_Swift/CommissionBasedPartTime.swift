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
    
    init(empID: Int,name: String, age:Int, rate: Double, hoursWorked: Float, commissionPerc: Double, emptype: TypeofEmployee, vehicle: Vehicle?)
    {
        self.commissionPerc = commissionPerc

        super.init(empID: empID,name: name, age: age, rate: rate, hoursWorked: hoursWorked, emptype: emptype, vehicle: vehicle)
    }


    func calcEarnings() -> Double
    {
        return (rate * Double(hoursWorked) + commissionPerc)
    }
    override func printMyData()
    {

         super.printMyData()
        print("--Employee is Commission Based Part Time--")
       
        print("Commission Percentage: \(commissionPerc)")
        
        print("Total Earnings: \(calcEarnings().Currency())")
        print(checkVehicle())

    }
    
}

