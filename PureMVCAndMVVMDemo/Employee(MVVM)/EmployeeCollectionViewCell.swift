//
//  EmployeeCollectionViewCell.swift
//  PureMVC
//
//  Created by Kumaran on 23/07/23.
//

import UIKit

class EmployeeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellBackGroundView: UIView!
    @IBOutlet weak var employeeProfileImageView: UIImageView!
    @IBOutlet weak var employeeNameLabel: UILabel!
    @IBOutlet weak var employeeAgeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }
    
    private func setupCell() {
        cellBackGroundView.layer.cornerRadius = 10
        cellBackGroundView.layer.shadowColor = UIColor.darkGray.cgColor
        cellBackGroundView.layer.shadowOffset = .zero
        cellBackGroundView.layer.shadowRadius = 2.0
        cellBackGroundView.layer.shadowOpacity = 0.6
        
        employeeProfileImageView.layer.cornerRadius = employeeProfileImageView.layer.frame.size.height / 2
        employeeProfileImageView.contentMode = .scaleAspectFill
    }
    
    func configureCell(model: EmployeeDataModel?) {
        employeeNameLabel.text = model?.name
        employeeAgeLabel.text = "\(model?.age ?? 0)"
        employeeProfileImageView.image = UIImage(named: model?.profile ?? "")
    }
}
