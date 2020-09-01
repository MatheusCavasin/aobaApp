//
//  ProdutorRepository.swift
//  aobaApp-iOS
//
//  Created by M Cavasin on 31/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import Foundation


class ProdutorRepository {
        
    func create(produtor: Produtor){
        
        //Coloque a URL da sua API aqui
        
        let url = "https://aoba-app-server.herokuapp.com/v1/produtor/create"
        
        let produtorDict = produtor.objectToDictrionary()
        
        //Chamando a funcão POST produtor
        ApiResource.request(method: "POST", url: url, params: nil, body: produtorDict){
            (result, err)  in
            //Aqui você tem seu resultado
            if let res:Bool = (err == nil) {
                if(res) {
                    //Aqui res podera assumir dois valores, true ou false
                    print("sua requisicao foi realizada com sucesso")
                    print(result)
                } else {
                    //Aqui voce pode tratar os erros
                    print("a requisicao nao funcionou")
                    print(err)
                }
            }
        }
    print("ENTROU \n\n\n")}
    
}
/*
 func createProdutor(){
 print("requestProducts")
 
 //Coloque a URL da sua API aqui
 let url = "https://aoba-app-server.herokuapp.com/v1/produtor/create"
 
 let produtor = [
 "email": "ana@aoba.com",
 "senha":"senha123",
 "nome":"Ana Aoba",
 "codigo_registro": "cpf4",
 "foto":"foto_4.png",
 "descricao": "Comerciante de Hortaliças"
 ]
 
 //Chamando a funcão POST produtor
 ApiResource.request(method: "POST", url: url, params: nil, body: produtor){
 (result, err)  in
 //Aqui você tem seu resultado
 if let res:Bool = (err == nil) {
 if(res) {
 //Aqui res podera assumir dois valores, true ou false
 print("sua requisicao foi realizada com sucesso")
 print(result)
 } else {
 //Aqui voce pode tratar os erros
 print("a requisicao nao funcionou")
 print(err)
 }
 }
 }
 }
 */
