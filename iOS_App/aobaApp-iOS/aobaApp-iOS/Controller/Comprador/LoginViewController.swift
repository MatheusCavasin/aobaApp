//
//  LoginViewController.swift
//  aobaApp-iOS
//
//  Created by Carlos Modinez on 13/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var btnEntrar: UIButton!
    @IBOutlet weak var btnCadastro: UIButton!
    @IBOutlet weak var btnEntrarComApple: UIButton!
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtSenha: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBtnCadastro()
        setBtnEntrar()
        setEntrarComApple()
    }

    func setBtnCadastro() {
        btnCadastro.layer.borderWidth = 2.0
        btnCadastro.layer.borderColor = #colorLiteral(red: 0, green: 0.7470995188, blue: 0.2256398201, alpha: 1)
        btnCadastro.layer.cornerRadius = 5.0
    }
    
    func setBtnEntrar() {
        btnCadastro.layer.cornerRadius = 5.0
    }
    
    
    func setEntrarComApple() {
        btnEntrarComApple.layer.borderWidth = 2.0
        btnEntrarComApple.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        btnEntrarComApple.layer.cornerRadius = 5.0
    }
}
