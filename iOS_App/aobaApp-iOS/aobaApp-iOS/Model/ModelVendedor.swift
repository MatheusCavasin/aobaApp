//
//  ModelVendedor.swift
//  aobaApp-iOS
//
//  Created by M Cavasin on 22/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import Foundation
import UIKit

class ModelVendedor {
    
    static let instance = ModelVendedor()
    
    private init() {
    }
    
    var hortifruit: [String] = []
    var email: String = ""
    var senha: String = ""
    var nome: String = ""
    var codigo_registro: String = ""
    var foto: String = ""
    var descricao: String = ""
    
}

