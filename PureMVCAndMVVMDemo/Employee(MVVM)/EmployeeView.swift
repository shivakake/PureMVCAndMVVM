//
//  EmployeeView.swift
//  PureMVC
//
//  Created by Kumaran on 23/07/23.
//

import Foundation
import UIKit

class EmployeeView: UIView {
    
    @IBOutlet weak var employeeListCollectionView: UICollectionView!
    
    var employeeListArray: [EmployeeDataModel] = [EmployeeDataModel]()
    
    func configureCollection() {
        employeeListCollectionView.dataSource = self
        employeeListCollectionView.delegate = self
    }
    
    func reloadCollectionView() {
        employeeListCollectionView.reloadData()
    }
}

extension EmployeeView: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return employeeListArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EmployeeCollectionViewCell", for: indexPath) as? EmployeeCollectionViewCell {
            cell.configureCell(model: employeeListArray[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
}

extension EmployeeView: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}

extension EmployeeView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = employeeListCollectionView.frame.size.width
        return CGSize(width: width - 10 , height: 145)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5.0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5.0
    }
}

