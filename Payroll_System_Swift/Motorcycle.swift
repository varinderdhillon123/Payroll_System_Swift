//
//  Motorcycle.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-22.
//

import Foundation
class Motorcycle: Vehicle
{
   var distanceTravelled: Double
    

 //   init(make: String, color: String, plate: String, distanceTravelled: Double)
    init(make: String, color: String, plate: String, distanceTravelled: Double)
    

    {
        self.distanceTravelled = distanceTravelled
        super.init(make: make, color: color, plate: plate)
    }
    
    override func printMyData()
    {
       
        print("\n**********Employee has a MotorCycle**********\n")
        super.printMyData()
       print("Distance Travelled: \(distanceTravelled.Currency())")
        
       
    }
}
