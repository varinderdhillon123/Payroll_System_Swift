//
//  Employee.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-16.
//

import Foundation
//enum TypeofEmployee{
//    case FullTime
//    case FixedBasedPartTime
//    case CommissionBasedPartTime
//    case Intern
//}

class Employee{

    var empID: Int
    var name: String
    var age: Int
    var emptype: TypeofEmployee
    //let calendar = Calendar.current
    //var currentYear = calendar.component(.year, from: Date)
    let currentYear = Calendar.current.component(.year, from: Date())
    var birthYear : Int{
        return currentYear-age
    }  //https://stackoverflow.com/questions/48670169/set-a-variable-with-current-year-in-swift
   
    //var vehicleDictionary = [Int:Vehicle]()
    var vehicleDic = [TypeofVehicle: Vehicle]()
    var vehicle: Vehicle?
    
    
    init(empID: Int, name: String, age:Int, emptype: TypeofEmployee) //, vehicle: Vehicle?)
     {
        self.empID = empID
        self.name = name
        self.age = age
        self.emptype = emptype
        //self.vehicle = vehicle
     }
    func addVehicle(v:Vehicle){
        vehicleDic.updateValue(v, forKey: v.plate)

        
    }
    func removeVehicle(v: String){
        vehicleDic.removeValue(forKey: v )
        

    }
//    }
//    func removeVehicle(v: Vehicle){
//        vehicleDic.remove(at: <#T##Dictionary<String, Vehicle>.Index#>)
//    }
    func printMyData()
    {
        
        print("""
            \n\n
            ---------------------------------------
            \t\t Employee Details
            ---------------------------------------
            Employee Id: \(empID)
            Name: \(name)
           Age: \(age)
            Employee's Birth Year : \(birthYear)
          """)
    }
    func checkVehicle()
    {
        if (vehicle?.vehicleType == nil){
            print("Employee has no Vehicle")
            vehicle?.printMyData()
        }
        else if(vehicle is Car)
        //else if (vehicleDic.vehicleType.contains(.Car)) // == .Car)
        {
           // print("Employee has a car")
           // let car: Car = Vehicle.vehicleType as! Car
            vehicle?.printMyData()
            
            
            //print("Make: \(Car)")
//            let car: vehicle.vehicleType
//            car.printMyData()
        }//else if (vehicle?.vehicleType == .Motorcycle)
         else if(vehicle is Motorcycle)
        {
            vehicle?.printMyData()
//            let bike: Motorcycle
//            Motorcycle.printMyData()
           // Motorcycle.printMyData()
            
        }
        
    }
    }
    

