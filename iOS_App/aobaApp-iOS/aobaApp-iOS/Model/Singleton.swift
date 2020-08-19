//
//  Singleton.swift
//  aobaApp-iOS
//
//  Created by Carlos Modinez on 18/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import Foundation

class Singleton {
    static var shared = Singleton()
    
    // Dados fake
    var macas: [Dictionary<String, String>] = [
        ["titulo": "Maçã Gala",
         "imagem": "maca-gala",
         "preco": "4,50",
         "quantidadeDisponiel": "20",
         "produtor": "Fazenda do Sol",
         "avaliação do produtor": "4.9"
        ],
        
        ["titulo": "Maçã Argentina",
         "imagem": "maca-argentina",
         "preco": "4,50",
         "quantidadeDisponiel": "20",
         "produtor": "Fazenda do Sol",
         "avaliação do produtor": "4.9"
        ],
        
        
        ["titulo": "Maçã Gala",
         "imagem": "maca-gala2",
         "preco": "4,50",
         "quantidadeDisponiel": "20",
         "produtor": "Fazenda do Sol",
         "avaliação do produtor": "4.9"
        ],
        
        
        ["titulo": "Maçã Verde",
         "imagem": "maca-verde",
         "preco": "4,50",
         "quantidadeDisponiel": "20",
         "produtor": "Fazenda do Sol",
         "avaliação do produtor": "4.9"
        ],
        
        
        ["titulo": "Maçã Ambrosia",
         "imagem": "maca-ambrosia",
         "preco": "4,50",
         "quantidadeDisponiel": "20",
         "produtor": "Fazenda do Sol",
         "avaliação do produtor": "4.9"
        ],
        ["titulo": "Maçã Gala",
         "imagem": "maca-gala",
         "preco": "4,50",
         "quantidadeDisponiel": "20",
         "produtor": "Fazenda do Sol",
         "avaliação do produtor": "4.9"
        ],
        
        ["titulo": "Maçã Argentina",
         "imagem": "maca-argentina",
         "preco": "4,50",
         "quantidadeDisponiel": "20",
         "produtor": "Fazenda do Sol",
         "avaliação do produtor": "4.9"
        ],
        
        
        ["titulo": "Maçã Gala",
         "imagem": "maca-gala2",
         "preco": "4,50",
         "quantidadeDisponiel": "20",
         "produtor": "Fazenda do Sol",
         "avaliação do produtor": "4.9"
        ],
        
        
        ["titulo": "Maçã Verde",
         "imagem": "maca-verde",
         "preco": "4,50",
         "quantidadeDisponiel": "20",
         "produtor": "Fazenda do Sol",
         "avaliação do produtor": "4.9"
        ],
        
        
        ["titulo": "Maçã Ambrosia",
         "imagem": "maca-ambrosia",
         "preco": "4,50",
         "quantidadeDisponiel": "20",
         "produtor": "Fazenda do Sol",
         "avaliação do produtor": "4.9"
        ]
    ]

    
    
    private init() {
        
    }
}
