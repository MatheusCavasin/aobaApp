//
//  SelecionadosTableViewCell.swift
//  aobaApp-iOS
//
//  Created by Carlos Modinez on 14/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import UIKit

class SelecionadosTableViewCell: UITableViewCell {

    @IBOutlet var title: UILabel!
    static var identifier = "SelecionadosTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "SelecionadosTableViewCell",
                     bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.title.text = "Selecionados para você"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    
}
