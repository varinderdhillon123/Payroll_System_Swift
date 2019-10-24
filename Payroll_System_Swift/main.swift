

import Foundation
//func readJsonFileArray(jsonFileName: String)
//{
//    let url = Bundle.main.url(forResource: "DataofEmp", withExtension: "json")
//
//    guard let jsonData = url else{
//        return
//    }
//
//    guard let data = try? Data(contentsOf: jsonData) else {
//        return
//    }
//
//    guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else {
//        return
//    }
//    //print(json)
//    var empList = [String: Input]()  //var userList = [String: User]()
//    if let jsonArray = json as? [Any]
//    {
//        var emp: Input!  //object of Employee Class
//        for empObject in jsonArray
//        {
//            //emp = Employee(empID)
//            emp = Input()
//   vehicleDic let jsonDictionay =  empObject as? [String: Any]
//            {
//                if let emptype = jsonDictionay["emptype"] as? TypeofEmployee
//
//                {
//
//                    emp.emptype = emptype
//                    print(emptype)
//                }
//                if let name = jsonDictionay["name"] as? String
//                {
//                    //print(name)
//                    emp.name = name
//                }
//
//                if let empID = jsonDictionay["empID"] as? Int
//                {
//                    //print(id)
//                    emp.empID = empID
//                }
//                if let age = jsonDictionay["age"] as? Int
//                {
//                    //print(age)
//                    emp.age = age
//                }
//                if let hrs = jsonDictionay["hoursworked"] as? Float
//                {
//                    //print(age)
//                    emp.hoursWorked = hrs
//                }
//
//            }
//            empList[emp.name!] = emp
//
//            if emp.emptype! == .Intern {  //"Intern"{
//                //  print("\n\n\n")
//                let obj = Intern(empID: emp.empID!,name: emp.name!, age: emp.age!, emptype: emp.emptype!, schoolName: "Lambton", earnings: 100.0)
//                obj.printMyData()
//            }
//            else if emp.emptype! == .FixedBasedPartTime   //"PartTime"
//            {
//                // print("\n\n")
//                let PTobj = FixedBasedPartTime(empID: emp.empID!,name: emp.name!,  age: emp.age!, fixedAmount: 500.0, rate: 2, hoursWorked: 23, emptype: .FixedBasedPartTime)
//                PTobj.printMyData()
//            }
//
//
//
//
//        }
//
//    }
//
//}
//readJsonFileArray(jsonFileName: "DataofEmp")


var empDic = [Int: Employee]()

//do
//{

    var veh1 = Car(make: "Ford", color: "Yellow", plate: "PB06", distanceTravelled: 5000, capacity: "3")
    var veh3 = Car(make: "Dodge", color: "Cyan", plate: "CSandhu", distanceTravelled: 2020.22, capacity: "3")
    
//}
//catch capacityError.InvalidCapacity(let capacity)
//{
//    print("Above the capacity:  \(capacity)")
//}


    
var veh2 =  Motorcycle(make: "Kawasaki", color: "Red", plate: "Var", distanceTravelled: 500.20)
var veh4 =  Motorcycle(make: "BMW", color: "Black", plate: "CAMY", distanceTravelled: 4500.00 )





//var vehicleDic = [String: Vehicle]()
var emp1 = FixedBasedPartTime(empID: 1,name: "ABC", age:25, fixedAmount: 200.0, rate: 22.5, hoursWorked: 23, emptype: .FixedBasedPartTime)  //, vehicle: veh4)

var emp3 = CommissionBasedPartTime(empID: 10,name: "Camy", age:24, rate: 16.0, hoursWorked: 40, commissionPerc: 15, emptype: .CommissionBasedPartTime)  //, vehicle: nil) // nil
var emp2 = FullTime(empID: 6, name: "Preet", age: 20, salary: 500.0, bonus: 60.0, emptype: .FullTime)  //, vehicle: veh1)

emp3.addVehicle(v: veh1)
emp2.addVehicle(v: veh2)
emp2.addVehicle(v: veh4)


func addEmployee(e:Employee)
{
    empDic.updateValue(e, forKey: e.empID)
}
addEmployee(e: emp1)
addEmployee(e: emp2)
addEmployee(e: emp3)

    

for e in empDic.keys.sorted()
{
    empDic[e]?.printMyData()
}
func getByEmpID(empID: Int){
    print("\n ~~~~~~~~~~~~~ GETTING DETAILS BY EMPLOYEE ID~~~~~~~~~~~~~~~~")
    if empDic.keys.contains(empID)
    {
        empDic[empID]?.printMyData()
    }else{
        print("\t\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
        print("\t\t\t\t Customer not found")
        print("\t\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
        
    }
    
}
// getting information by Employee ID
print(getByEmpID(empID: 8))
//print(getBy8)
print(getByEmpID(empID: 6))
//print(getBy6)








