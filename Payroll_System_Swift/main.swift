

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
                   
                    emp.emptype = emptype
                     print(emptype)
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
            else if emp.emptype! == .FixedBasedPartTime   //"PartTime"
            {
                // print("\n\n")
                let PTobj = FixedBasedPartTime(empID: emp.empID!,name: emp.name!,  age: emp.age!, fixedAmount: 500.0, rate: 2, hoursWorked: 23, emptype: .FixedBasedPartTime)
                PTobj.printMyData()

            }
            
            
            
            
        }
        
    }
    
}


readJsonFileArray(jsonFileName: "DataofEmp")



var emp1 = FixedBasedPartTime(empID: 1,name: "ABC", age:25, fixedAmount: 200.0, rate: 2.5, hoursWorked: 23, emptype: .FixedBasedPartTime)
var emp2 = Intern(empID: 15, name: "Preet", age: 18, emptype: .Intern , schoolName: "Lambton" , earnings: 500.0)
var emp3 = CommissionBasedPartTime(empID: 10,name: "Camy", age:24, rate: 16.0, hoursWorked: 40, commissionPerc: 15, emptype: .CommissionBasedPartTime)

var empDic = [Int: Employee]()




