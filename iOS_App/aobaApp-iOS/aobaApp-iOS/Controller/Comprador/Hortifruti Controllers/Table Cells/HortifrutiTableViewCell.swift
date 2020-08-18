//
//  HortifrurisTableViewCell.swift
//  aobaApp-iOS
//
//  Created by Carlos Modinez on 14/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import UIKit

class HortifrutiTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    

    static let identifier = "HortifrutiTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "HortifrutiTableViewCell",
                     bundle: nil)
    }
    
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(HortifrutiCollectionViewCell.nib(), forCellWithReuseIdentifier: HortifrutiCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(title: String) {
        self.title.text = title
    }
    
    // Collection view inside table row
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HortifrutiCollectionViewCell.identifier, for: indexPath) as! HortifrutiCollectionViewCell
        
        cell.configure(name: "Abacaxi", imageName: "fruta-abacaxi")
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 139, height: 118)
    }
}
