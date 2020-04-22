//
//  Filmes.swift
//  Filmes
//
//  Created by Alexandre de Oliveira Nepomuceno on 21/04/20.
//  Copyright © 2020 Alexandre de Oliveira Nepomuceno. All rights reserved.
//

import UIKit

class Filmes{
    var titulo : String!
    var descricao : String!
    var imagem: UIImage!
    
    init(titulo:String, descricao:String, imagem:UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
}
