//
//  Vehicle.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-22.
//

import Foundation
enum TypeofVehicle{
    case Car
    case Motorcycle
    case None
}
class Vehicle: IPrintable
{
    var make: String
    var color: String
    var plate: String
    var vehicleType:TypeofVehicle
    init(make: String, color: String, plate: String, vehicleType: TypeofVehicle)
    {
        self.make = make
        self.color = color
        self.plate = plate
        self.vehicleType = vehicleType
    }
    
    func addVehicle(v:Vehicle){
        vehicleDic.updateValue(v, forKey: v.plate)
        
    }
    func printMyData()
    {
        print("Make: \(make)",
            "Color: \(color)",
            "Plate: \(plate)")
    }
}
