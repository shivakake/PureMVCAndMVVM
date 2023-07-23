//
//  EmployeeViewController.swift
//  PureMVC
//
//  Created by Kumaran on 23/07/23.
//

import UIKit

class EmployeeViewController: UIViewController {
    
    @IBOutlet var employeeView: EmployeeView!
    
    let employeeViewModel: EmployeeViewModel = EmployeeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "MVVM"
        employeeViewModel.getEmployeeList()
//        let data = employeeViewModel.employeeListArray
        employeeView.employeeListArray = employeeViewModel.employeeListArray //data
        employeeView.configureCollection()
        employeeView.reloadCollectionView()
    }
}

