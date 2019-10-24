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
    

    init(empID: Int, name: String, age:Int, fixedAmount: Double, rate: Double, hoursWorked: Float, emptype: TypeofEmployee, vehicle: Vehicle)
    {
        self.fixedAmount = fixedAmount
        super.init(empID: empID,name: name, age: age, rate: rate, hoursWorked: hoursWorked, emptype: emptype, vehicle: vehicle)

    }
    init(vehicle: Vehicle){
        self.vehicle = vehicle
    }
    func calEarnings() -> Double
    {
           return (rate * Double(hoursWorked) + fixedAmount)
        
    }
    override func printMyData()
    {
        super.printMyData()
        print("--Employee is Fixed Based Part Time--")
//        print("NAME: \(name) \n AGE: \(age) \n FIXED AMOUNT: \(fixedAmount) \n HOURS WORKED: \(hoursWorked) \n RATE: \(rate))")
        print("FixedAmount: \(fixedAmount.Currency())")
        print("Total Earnings: \(calEarnings().Currency())")
        print(checkVehicle())

    }
    
    
}
