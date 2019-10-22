

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
    var userList = [String: Employee]()  //var userList = [String: User]()
    if let jsonArray = json as? [Any]
    {
        var user: Employee!
        for userObject in jsonArray
        {
            user = Employee(empID)
            if let jsonDictionay =  userObject as? [String: Any]
            {
                if let emptype = jsonDictionay["emptype"] as? String
                {
                    //print(emptype)
                    user.emptype = emptype
                }
                if let name = jsonDictionay["name"] as? String
                {
                    //print(name)
                    user.name = name
                }
                
                if let id = jsonDictionay["id"] as? Int
                {
                    //print(id)
                    user.id = id
                }
                if let age = jsonDictionay["age"] as? Int
                {
                    //print(age)
                    user.age = age
                }
                if let hrs = jsonDictionay["hoursworked"] as? Float
                {
                    //print(age)
                    user.hourswork = hrs
                }
                
            }
            userList[user.name!] = user
            
            if user.emptype == "Intern"{
                //  print("\n\n\n")
                let obj = Intern(IempID: user.id!,IName: user.name!, IAge: user.age!, IEarning: 100.0, SchoolName: "Lambton", IEmpType: user.emptype!)
                obj.printMyData()
            }
            else if user.emptype=="PartTime"
            {
                // print("\n\n")
                let PTobj = PartTime(empID: user.id!,PTEmptype: user.emptype!, PTEmpName: user.name!, PTEmpAge: user.age!, PTEmpEarning: 100.1, Rate: 23, HoursWorked: user.hourswork!)
                PTobj.printMyData()
                
            }
            
            
            
            
        }
        
    }
    
}


readJsonFileArray(jsonFileName: "DataofEmp")
