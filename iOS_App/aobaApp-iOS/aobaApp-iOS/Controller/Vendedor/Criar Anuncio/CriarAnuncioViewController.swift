//
//  CriarAnuncioViewController.swift
//  aobaApp-iOS
//
//  Created by M Cavasin on 19/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import UIKit

class CriarAnuncioViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource, CellsDelegate {
    
    
    
    
    @IBOutlet weak var tableViewAnuncio: UITableView!
    
    var qtde = 0
    var qtdeprodutos = 1
    var tabVendedor = TabAnuncioVendedorViewController()
    
    var numberFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        formatter.numberStyle = .currency
        
        return formatter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewAnuncio.delegate = self
        tableViewAnuncio.dataSource = self
        tableViewAnuncio.reloadData()
        tableViewAnuncio.separatorStyle = .none
    }
    
    
    @IBAction func CancelButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 11 + qtdeprodutos
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "lblSelecioneCell", for: indexPath) as! LabelsCriarAnuncioTableViewCell
            //set the data here
            return cell
            
        }
        else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "searchBarCell", for: indexPath) as! SearchBarCell
            //set the data here
            return cell
        }
        else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "naoEncontreiCell", for: indexPath) as! NaoEcontreiButtonCell
            //set the data here
            return cell
        }
        else if indexPath.row == 3 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "lblQtdeCaixasCell", for: indexPath) as! LabelsCriarAnuncioTableViewCell
            return cell
        }
        else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "qtdeCaixasCell", for: indexPath) as! QtdeCaixasCell
            
            return cell
        }
        else if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "lblValorCell", for: indexPath) as! LabelsCriarAnuncioTableViewCell
            return cell
        }
        else if indexPath.row == 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "txtValorCell", for: indexPath) as! TextFieldValorCell
            return cell
        }
        else if indexPath.row == 7 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "fotoCell", for: indexPath) as! FotoButtonCell
            return cell
        }
        else if indexPath.row == 8 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "addProdutoCell", for: indexPath) as! AddProdutoButtonCell
            cell.delegate = self
            return cell
        }
        else if indexPath.row == 9 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "lblProdutosCell", for: indexPath) as! LabelsCriarAnuncioTableViewCell
            return cell
        } else if indexPath.row == 11 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "publicarCell", for: indexPath) as! PublicarButtonCell
            cell.delegate = self
            return cell
        }
        else  { // para adicionar varias linhas na table view na posicao dos produtos
            let cell = tableView.dequeueReusableCell(withIdentifier: "produtosCell", for: indexPath) as! ProdutosTableViewCell
            /*cell.imgProduto.image = UIImage(named: "maca_gala")
             cell.imgProduto.layer.cornerRadius = 5
             cell.lblTipo.text = "Maçã Gala"
             cell.lblQuantidade.text = "5 caixas"
             cell.lblValor.text = "R$ 100,00" */
            return cell
            
            
        }
        
        
        //        else{
        //            let cell = tableView.dequeueReusableCell(withIdentifier: "publicarCell", for: indexPath) as! PublicarButtonCell
        //            return cell
        //        }
        
        
    }
    
    func addButtonPressed() {
        tableViewAnuncio.reloadData()
    }
    func publicarButtonPressed() {
        self.dismiss(animated: true){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "NotificationID"), object: nil)

        }
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
}
