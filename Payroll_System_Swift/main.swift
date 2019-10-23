

import Foundation

func readJsonFileArray(jsonFileName: String)
{
    let url = Bundle.main.url(forResource: "DataofEmp", withExtension: "json")
    
    guard let jsonData = url else{
        return
    }
    
    guard let data = try? Data(contentsOf: jsonData) else {
        return
    }
    
    guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else {
        return
    }
    //print(json)
    var empList = [String: Input]()  //var userList = [String: User]()
    if let jsonArray = json as? [Any]
    {
        var emp: Input!  //object of Employee Class
        for empObject in jsonArray
        {
            //emp = Employee(empID)
            emp = Input()
            if let jsonDictionay =  empObject as? [String: Any]
            {
                if let emptype = jsonDictionay["emptype"] as? TypeofEmployee
        
                {
                    //print(emptype)
                    emp.emptype = emptype
                }
                if let name = jsonDictionay["name"] as? String
                {
                    //print(name)
                    emp.name = name
                }
                
                if let empID = jsonDictionay["empID"] as? Int
                {
                    //print(id)
                    emp.empID = empID
                }
                if let age = jsonDictionay["age"] as? Int
                {
                    //print(age)
                    emp.age = age
                }
                if let hrs = jsonDictionay["hoursworked"] as? Float
                {
                    //print(age)
                    emp.hoursWorked = hrs
                }
                
            }
            empList[emp.name!] = emp
            
            if emp.emptype! == .Intern {  //"Intern"{
                //  print("\n\n\n")
               let obj = Intern(empID: emp.empID!,name: emp.name!, age: emp.age!, emptype: emp.emptype!, schoolName: "Lambton", earnings: 100.0)
                   obj.printMyData()
            }
//            else if emp.emptype! == .PartTime {   //"PartTime"
//            {
//                // print("\n\n")
//                let PTobj = PartTime(empID: user.id!,PTEmptype: user.emptype!, PTEmpName: user.name!, PTEmpAge: user.age!, PTEmpEarning: 100.1, Rate: 23, HoursWorked: user.hourswork!)
//                PTobj.printMyData()
//
//            }
            
            
            
            
        }
        
    }
    
}


readJsonFileArray(jsonFileName: "DataofEmp")
