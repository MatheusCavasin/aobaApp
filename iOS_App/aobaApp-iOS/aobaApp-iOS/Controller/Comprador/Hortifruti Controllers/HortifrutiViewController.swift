//
//  HortfruitsViewController.swift
//  aobaApp-iOS
//
//  Created by Carlos Modinez on 14/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import UIKit

class HortifrutiViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TableView
        tableView.register(HortifrutiTableViewCell.nib(), forCellReuseIdentifier: HortifrutiTableViewCell.identifier)
        tableView.register(SelecionadosTableViewCell.nib(), forCellReuseIdentifier: SelecionadosTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        //Navbar and search item
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        
    }
    
    
    // Quantidade de categorias + 1 devido ao título (Frutas + verduras + Legumes + 1 = 4)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    // Populando as células
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            // Para a primeira célula escrito "Selecionados para você"
            let cell = tableView.dequeueReusableCell(withIdentifier: SelecionadosTableViewCell.identifier, for: indexPath) as! SelecionadosTableViewCell
            return cell
        }
        
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: HortifrutiTableViewCell.identifier, for: indexPath) as! HortifrutiTableViewCell
            
            if indexPath.row == 1 {
                cell.configure(title: "Frutas")
            } else if indexPath.row == 2 {
                cell.configure(title: "Verduras")
            } else {
                cell.configure(title: "Legumes")
            }
            return cell
        }
    }
       
    
    // Determinando o tamanho das células
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var cellsize = 181
        if indexPath.row == 0 {
            cellsize = 49  //Para a primeira celula: "Selecionados para você"
        }
        
        return CGFloat(cellsize)
    }

}
