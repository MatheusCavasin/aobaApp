//
//  Produtor.swift
//  aobaApp-iOS
//
//  Created by Carlos Modinez on 11/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import Foundation

class Produtor: User {
    
    var descricao: String
    var localizacao: Ceasa
    
    init(email: String, senha: String, nome: String, foto: String, descricao: String, localizacao: Ceasa) {
          
        self.descricao = descricao
        self.localizacao = localizacao
        super.init(email: email, senha: senha, nome: nome, foto: foto)
    }
}
