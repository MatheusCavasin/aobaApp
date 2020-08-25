//
//  DetalhesDoProdutoViewController.swift
//  aobaApp-iOS
//
//  Created by Carlos Modinez on 19/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import UIKit

class DetalhesDoProdutoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var btnCancelar: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
    }
    
    @IBAction func btnCancelarPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "image") as! ImageTableViewCell
            return cell
        }
        else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "title") as! TitleTableViewCell
            return cell
        }
        
        else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "fazenda") as! FazendaTableViewCell
            return cell
        }
        
        else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "caixasDisponiveis") as! CaixasDisponivelsTableViewCell
            return cell
        }
        
        else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "quantidade") as! QuantidadeTableViewCell
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "button") as! ButtonTableViewCell
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 260
        } else if indexPath.row == 1 {
            return 95
        } else if indexPath.row == 2 {
            return 45
        } else if indexPath.row == 3 {
            return 80
        } else if indexPath.row == 4 {
            return 170
        }
        return 100
        
    }
}
