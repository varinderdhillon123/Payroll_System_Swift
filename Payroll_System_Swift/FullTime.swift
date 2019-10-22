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
    

    init(empID: Int, name: String, age: Int, salary: Double, bonus: Double)
    {
        self.salary=salary
        self.bonus=bonus
        super.init(empID: empID, name: name, age: age)

   }
    if (employee._vehicle is null)
    {
      print("Employee has no vehicle registerd")
    }
    else if(employee._Vehicle is Car)
    {
    print("Employee has a Car\n")
    let carObj = employee._Vehicle as! Car
    employee._Vehicle?._VehicleType = "Car"
    distanceTravelled = carObj._distanceTravelled
    capacity = carObj._capacity
    }
    else if(employee._Vehicle is Motorcycle)
    {
    let motorcycleObj = employee._vehicle as! Motorcycle
    employee._Vehicle?._VehicleType = "Motorcycle"
    distanceTravelled = motorcycleObj._ distanceTravelled
    }
    
    override func printMyData() -> String
    {
        super.printMyData()
    }
    
}
