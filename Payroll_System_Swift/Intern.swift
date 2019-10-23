//
//  Intern.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-22.
//

import Foundation
class Intern: Employee
{
   private var schoolName: String
   private var earnings: Double
   var Vehicle_dict = [Int: Vehicle]()
    
    init(empID: Int, name: String, age: Int, emptype: TypeofEmployee , schoolName: String , earnings: Double, vehicle: Vehicle?)
{
    self.schoolName = schoolName
    self.earnings = earnings
    super.init(empID: empID, name: name, age: age, emptype: emptype, vehicle: vehicle)
}
    
    override func printMyData() //-> String
    {
        super.printMyData()
        print("School Name: \(schoolName)")
        print("Earnings: \(earnings.Currency())")
    }
    
    
}
