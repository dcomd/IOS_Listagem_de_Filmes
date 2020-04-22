//
//  DetalhesViewController.swift
//  Filmes
//
//  Created by Alexandre de Oliveira Nepomuceno on 21/04/20.
//  Copyright © 2020 Alexandre de Oliveira Nepomuceno. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {

    @IBOutlet weak var filmeImagem: UIImageView!
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    var filmeSecionado : Filmes!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        filmeImagem.image = filmeSecionado.imagem
        lblTitulo?.text = filmeSecionado.titulo
        lblDesc?.text = filmeSecionado.descricao
    }

}
