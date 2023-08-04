//
//  EmployeeModel.swift
//  PureMVC
//
//  Created by Kumaran on 23/07/23.
//

import Foundation

class EmployeeModel {
    
    var employeeListArray: [EmployeeDataModel] = [EmployeeDataModel]()
    
    func getEmployeeList() {
        employeeListArray = [
            EmployeeDataModel(aName: "PGK Chinna Narsappa", aAge: 67, aProfile: "Image_01"),
            EmployeeDataModel(aName: "PGK Jayamma", aAge: 65, aProfile: "Image_02"),
            EmployeeDataModel(aName: "PGK Jagadeesh", aAge: 42, aProfile: "Image_03"),
            EmployeeDataModel(aName: "PGK Govinda Raju", aAge: 40, aProfile: "Image_04"),
            EmployeeDataModel(aName: "PGK Babu", aAge: 38, aProfile: "Image_05"),
            EmployeeDataModel(aName: "PGK Raghavendra", aAge: 36, aProfile: "Image_06"),
            EmployeeDataModel(aName: "PGK Jyothi", aAge: 34, aProfile: "Image_07"),
            EmployeeDataModel(aName: "PGK Shiva Kumaran", aAge: 32, aProfile: "Image_08"),
            EmployeeDataModel(aName: "PGK Nishith", aAge: 22, aProfile: "Image_09"),
            EmployeeDataModel(aName: "PGK Sai Saketh", aAge: 19, aProfile: "Image_10"),
            EmployeeDataModel(aName: "PGK Chakri", aAge: 8, aProfile: "Image_11"),
            EmployeeDataModel(aName: "PGK Yudistra", aAge: 6, aProfile: "Image_12"),
            EmployeeDataModel(aName: "PGK Nishitha", aAge: 10, aProfile: "Image_13")
        ]
    }
}

struct EmployeeDataModel {
    
    var name: String?
    var age: Int?
    var profile: String?
    
    init(aName: String?, aAge: Int?, aProfile: String?) {
        name = aName
        age = aAge
        profile = aProfile
    }
}
