//
//  Vehicle.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-22.
//

import Foundation
class Vehicle: IPrintable
{
    var make: String
    var color: String
    var plate: String
    
//    enum TypeofVehicle{
//        case Car
//        case Motorcycle
//        case None
//    }
    public var vehicleType:String = "" //:TypeofVehicle = .None

    init(make: String, color: String, plate: String)
    {
        self.make = make
        self.color = color
        self.plate = plate
       // self.vehicleType = vehicleType
    }
    
    func addVehicle(v:Vehicle){
        vehicleDic.updateValue(v, forKey: v.plate)
        
    }
    
    func printMyData()
    {
        print(" Make: \(make) \n",
              "Color: \(color) \n",
              "Plate: \(plate)")
    }
}
