//
//  TabAnuncioVendedorViewController.swift
//  aobaApp-iOS
//
//  Created by M Cavasin on 14/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import UIKit

class TabAnuncioVendedorViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var CriarAnuncioButton: UIButton!
    @IBOutlet weak var tableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        CriarAnuncioButton.layer.cornerRadius = 5
        CriarAnuncioButton.layer.borderWidth = 2
        CriarAnuncioButton.layer.borderColor = #colorLiteral(red: 1, green: 0.5716887116, blue: 0.1306569278, alpha: 1)
        tableView.delegate = self
        tableView.dataSource = self

        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnuncioCell", for: indexPath) as! AnuncioVendedorTableViewCell
        /// let anuncio = Anuncios[indexPath.row]
        cell.imgProduto.image = UIImage(named: "maca_gala")
        cell.imgProduto.layer.cornerRadius = 5
        cell.lblTipo.text = "Maçã Gala"
        cell.lblQuantidade.text = "5 caixas"
        cell.lblValor.text = "R$ 100,00"
        
        ///cell.configure(for: anuncio)
        
        // Configure the cell...
        
        return cell
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
