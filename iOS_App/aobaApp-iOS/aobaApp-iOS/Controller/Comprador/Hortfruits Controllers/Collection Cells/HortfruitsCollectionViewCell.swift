//
//  HortfruitsCollectionViewCell.swift
//  aobaApp-iOS
//
//  Created by Carlos Modinez on 14/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import UIKit

class HortfruitsCollectionViewCell: UICollectionViewCell {

    @IBOutlet var name: UILabel!
    @IBOutlet var image: UIImageView!
    
    static let identifier = "HortfruitsCollectionViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "HortfruitsCollectionViewCell",
                     bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(name: String, imageName: String) {
        self.name.text = name
        self.image.image = UIImage(named: imageName)
        self.image.layer.cornerRadius = 5.0
    }

}
