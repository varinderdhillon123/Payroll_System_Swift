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
    else if(employee._vehicle is Car)
    {
    print("Employee has a Car\n")
    let carObj = employee._vehicle as! Car
    employee._vehicle?._vehicleType = "Car"
    distanceTravelled = carObj._distanceTravelled
    capacity = carObj._capacity
    }
    
}
