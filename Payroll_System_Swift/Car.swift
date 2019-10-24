//
//  Car.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-22.
//

import Foundation
//enum capacityError: Error
//{
//    case InvalidCapacity(capacity: String)
//}
class Car: Vehicle
{
  var distanceTravelled: Double
  var capacity: String
    
    init(make: String, color: String, plate: String,  distanceTravelled: Double, capacity: String) 
    {
//        if capacity.count > 4
//        {
//            throw capacityError.InvalidCapacity(capacity: capacity)
//        }
//         self.capacity = capacity
//
         self.distanceTravelled = distanceTravelled
        self.capacity = capacity
         super.init(make: make, color: color, plate: plate)
    }
    
    override func printMyData()
    {
       // print("-----------------------------")
        print("\n***********Employee has a Car************")
        //print("-----------------------------")
        super.printMyData()
        print(" Distance: \(distanceTravelled.kilometer())\n",
            "Capacity: \(capacity.capacity())")
        }
  
    
}
