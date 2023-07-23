//
//  UserModel.swift
//  PureMVC
//
//  Created by Kumaran on 22/07/23.
//

import Foundation

class UserModel {
    
    var userListArray: [UserDataModel] = [UserDataModel]()
    
    func getUserList() {
        userListArray = [
            UserDataModel(aName: "PGK Chinna Narsappa", aAge: 67, aProfile: "Image_01"),
            UserDataModel(aName: "PGK Jayamma", aAge: 65, aProfile: "Image_02"),
            UserDataModel(aName: "PGK Jagadeesh", aAge: 42, aProfile: "Image_03"),
            UserDataModel(aName: "PGK Govinda Raju", aAge: 40, aProfile: "Image_04"),
            UserDataModel(aName: "PGK Babu", aAge: 38, aProfile: "Image_05"),
            UserDataModel(aName: "PGK Raghavendra", aAge: 36, aProfile: "Image_06"),
            UserDataModel(aName: "PGK Jyothi", aAge: 34, aProfile: "Image_07"),
            UserDataModel(aName: "PGK Shiva Kumar", aAge: 32, aProfile: "Image_08"),
            UserDataModel(aName: "PGK Nishith", aAge: 22, aProfile: "Image_09"),
            UserDataModel(aName: "PGK Sai Saketh", aAge: 19, aProfile: "Image_10"),
            UserDataModel(aName: "PGK Chakri", aAge: 8, aProfile: "Image_11"),
            UserDataModel(aName: "PGK Yudistra", aAge: 6, aProfile: "Image_12"),
            UserDataModel(aName: "PGK Nishitha", aAge: 10, aProfile: "Image_13")
        ]
    }
}

struct UserDataModel {
    
    var name: String?
    var age: Int?
    var profile: String?
    
    init(aName: String?, aAge: Int?, aProfile: String?) {
        name = aName
        age = aAge
        profile = aProfile
    }
}
