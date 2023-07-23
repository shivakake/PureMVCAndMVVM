//
//  UserCollectionViewCell.swift
//  PureMVC
//
//  Created by Kumaran on 22/07/23.
//

import UIKit

class UserCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellBackGroundView: UIView!
    @IBOutlet weak var userProfileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userAgeLabel: UILabel!
    
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
        
        userProfileImageView.layer.cornerRadius = userProfileImageView.layer.frame.size.height / 2
        userProfileImageView.contentMode = .scaleAspectFill
    }
    
    func configureCell(model: UserDataModel?) {
        userNameLabel.text = model?.name
        userAgeLabel.text = "\(model?.age ?? 0)"
        userProfileImageView.image = UIImage(named: model?.profile ?? "")
    }
}
