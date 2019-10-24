//
//  Car.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-22.
//

import Foundation
enum capacityEror: Error
{
    case InvalidCapacity(capacity: String)
}
class Car: Vehicle
{
  var distanceTravelled: Double
  var capacity: String
    
    init(make: String, color: String, plate: String,  distanceTravelled: Double, capacity: String) throws
    {
        
    {
        if capacity > "4"
        {
            throw capacityEror.InvalidCapacity(capacity: capacity)
        }
    }
        
    
        self.distanceTravelled = distanceTravelled
        self.capacity = capacity
        super.init(make: make, color: color, plate: plate)
    }
    
    override func printMyData()
    {
        print("-----------------------------")
        print("     Employee has a Car      ")
        print("-----------------------------")
        super.printMyData()
        print(" Distance: \(distanceTravelled.kilometer())\n",
            "Capacity: \(capacity.capacity())")
        }
  
    
}
