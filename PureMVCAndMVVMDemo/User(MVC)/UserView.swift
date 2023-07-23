//
//  UserView.swift
//  PureMVC
//
//  Created by Kumaran on 22/07/23.
//

import Foundation
import UIKit

class UserView: UIView {
    
    @IBOutlet weak var userListCollectionView: UICollectionView!
    
    var userListArray: [UserDataModel] = [UserDataModel]()
    
    func configureCollection() {
        userListCollectionView.dataSource = self
        userListCollectionView.delegate = self
    }
    
    func reloadCollectionView() {
        userListCollectionView.reloadData()
    }
}

extension UserView: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return userListArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UserCollectionViewCell", for: indexPath) as? UserCollectionViewCell {
            cell.configureCell(model: userListArray[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
}

extension UserView: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}

extension UserView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = userListCollectionView.frame.size.width
        return CGSize(width: width - 10 , height: 145)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5.0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5.0
    }
}
