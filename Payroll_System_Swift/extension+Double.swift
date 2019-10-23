//
//  extension+Double.swift
//  Payroll_System_Swift
//
//  Created by MacStudent on 2019-10-22.
//

import Foundation
extension Double
{
    func Currency()-> String
    {
        return String(format: "$ %0.2f", Double(self))
    }
    
    func kilometer() ->String
    {
        return "\(self) Km"
    }
}
