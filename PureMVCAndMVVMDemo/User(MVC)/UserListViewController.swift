//
//  UserListViewController.swift
//  PureMVC
//
//  Created by Kumaran on 22/07/23.
//

import UIKit

class UserListViewController: UIViewController {

    @IBOutlet var userListView: UserView!
    
    var userModel: UserModel = UserModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }
    
    @IBAction func goTONextTapped(_ sender: UIBarButtonItem) {
        
        guard let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EmployeeViewController") as? EmployeeViewController else { return }
        self.navigationController?.pushViewController(controller, animated: true)
    }
}

extension UserListViewController {
    
    func getData() {
        userModel.getUserList()
        userListView.userListArray = userModel.userListArray
        userListView.configureCollection()
        userListView.reloadCollectionView()
    }
}
