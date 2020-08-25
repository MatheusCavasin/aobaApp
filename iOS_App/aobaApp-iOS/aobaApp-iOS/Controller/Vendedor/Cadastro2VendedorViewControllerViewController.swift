//
//  Cadastro2VendedorViewControllerViewController.swift
//  aobaApp-iOS
//
//  Created by M Cavasin on 13/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import UIKit

class Cadastro2VendedorViewControllerViewController: UIViewController {

    @IBOutlet weak var CadastrarButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Cadastro"
        CadastrarButton.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
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
