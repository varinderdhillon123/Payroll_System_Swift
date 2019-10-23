//
//  Car.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-22.
//

import Foundation
class Car: Vehicle
{
  var distanceTravelled: Double
  var capacity: String
    
    init(make: String, color: String, plate: String, vehicleType: TypeofVehicle, distanceTravelled: Double, capacity: String)
    {
        self.distanceTravelled = distanceTravelled
        self.capacity = capacity
        super.init(make: make, color: color, plate: plate, vehicleType: vehicleType)
    }
    override func printMyData()
    {
        print("Distance: \(distanceTravelled)",
            "Capacity: \(capacity)")
        }
  
    
}