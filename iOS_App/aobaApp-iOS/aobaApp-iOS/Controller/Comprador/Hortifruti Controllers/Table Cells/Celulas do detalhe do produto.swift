//
//  HeaderTableViewCell.swift
//  aobaApp-iOS
//
//  Created by Carlos Modinez on 20/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    @IBOutlet weak var imgProduto: UIImageView!
    
    override func awakeFromNib() {
        imgProduto.layer.cornerRadius = 5.0
    }
    
}

class TitleTableViewCell: UITableViewCell {
    @IBOutlet weak var nomeDoProduto: UILabel!
    @IBOutlet weak var precoDoProduto: UILabel!
    
    
    override func awakeFromNib() {
        
    }
}

class FazendaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var viwBackground: UIView!
    @IBOutlet weak var lblFazenda: UILabel!
    @IBOutlet weak var lblAvaliacao: UILabel!
    
    override func awakeFromNib() {
        viwBackground.layer.cornerRadius = 10.0
        viwBackground.layer.borderWidth = 0.5
        viwBackground.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    }
}



class CaixasDisponivelsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lblQuantidade: UILabel!
    
    override func awakeFromNib() {
        
    }
}

class QuantidadeTableViewCell: UITableViewCell, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    @IBOutlet weak var pkvQuantidade: UIPickerView!
    var pickerData: [String] = []
    
    override func awakeFromNib() {
        
        for i in 0...24 {
            pickerData.append("\(i)")
        }
        self.pkvQuantidade.delegate = self
        self.pkvQuantidade.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //Igual ao numero de caixas disponiveis
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
}

class ButtonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var btnAdicionar: UIButton!
    
    override func awakeFromNib() {
        
    }
    @IBAction func btnAdicionarPressed(_ sender: Any) {
    }
}
