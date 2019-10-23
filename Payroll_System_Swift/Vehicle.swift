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
    func printMyData()
    {
        print("Make: \(make)",
            "Color: \(color)",
            "Plate: \(plate)")
    }
}
