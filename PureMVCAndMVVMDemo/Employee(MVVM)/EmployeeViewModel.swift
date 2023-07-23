//
//  EmployeeViewModel.swift
//  PureMVC
//
//  Created by Kumaran on 23/07/23.
//

import Foundation

class EmployeeViewModel {
    
    let employeeModel: EmployeeModel = EmployeeModel()
    var employeeListArray: [EmployeeDataModel] = [EmployeeDataModel]()
    
    func getEmployeeList() {
        employeeModel.getEmployeeList()
        let data = employeeModel.employeeListArray
        self.employeeListArray = data
    }
}
