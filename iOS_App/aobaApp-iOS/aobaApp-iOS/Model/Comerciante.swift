//
//  Comerciante.swift
//  aobaApp-iOS
//
//  Created by M Cavasin on 04/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import Foundation



class Comerciante: User {
    
    var teste: String
    init(teste: String, email: String, senha: String, nome: String, foto: String){
        self.teste = teste
        
        super.init(email: email, senha: senha, nome: nome, foto: foto)
    }
}
