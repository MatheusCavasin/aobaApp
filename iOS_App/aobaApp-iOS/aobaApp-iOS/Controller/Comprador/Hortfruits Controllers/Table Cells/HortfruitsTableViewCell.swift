//
//  HortfruitsTableViewCell.swift
//  aobaApp-iOS
//
//  Created by Carlos Modinez on 14/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import UIKit

class HortfruitsTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    

    static let identifier = "HortfruitsTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "HortfruitsTableViewCell",
                     bundle: nil)
    }
    
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(HortfruitsCollectionViewCell.nib(), forCellWithReuseIdentifier: HortfruitsCollectionViewCell.identifier)
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HortfruitsCollectionViewCell.identifier, for: indexPath) as! HortfruitsCollectionViewCell
        
        cell.configure(name: "abacaxi", imageName: "fruta-abacaxi")
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 139, height: 118)
    }
}
