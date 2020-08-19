//
//  ProdutoTableViewCell.swift
//  aobaApp-iOS
//
//  Created by Carlos Modinez on 18/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import UIKit

class ProdutoTableViewCell: UITableViewCell {
    @IBOutlet weak var contorno: UIView!
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var preco: UILabel!
    @IBOutlet weak var avalicaoDoProdutor: UILabel!
    @IBOutlet weak var quantidadeDisponivel: UILabel!
    @IBOutlet weak var imagem: UIImageView!
    
    
    
    static let identifier = "ProdutoTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "ProdutoTableViewCell",
                     bundle: nil)
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        //Configuração do contorno
        contorno.layer.borderWidth = 1.0
        contorno.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        contorno.layer.cornerRadius = 10.0
        
        // Configuracao da imagem
        imagem.clipsToBounds = true
        imagem.layer.cornerRadius = 10
        imagem.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner]
    }
      
    
    func config(produto: Dictionary<String, String>) {
        titulo.text = produto["titulo"] ?? "??"
        imagem.image = UIImage(named: produto["imagem"] ?? "logo")
        preco.text = "R$ " + String(produto["preco"] ?? "0,00") + " caixa"
        quantidadeDisponivel.text = String(produto["quantidadeDisponiel"] ?? "0.0") + " caixas disponíveis"
        avalicaoDoProdutor.text = String(produto["avaliação do produtor"]!)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}



