//
//  ViewController.swift
//  Filmes
//
//  Created by Alexandre de Oliveira Nepomuceno on 21/04/20.
//  Copyright © 2020 Alexandre de Oliveira Nepomuceno. All rights reserved.
//

import UIKit

class ViewController:UITableViewController {
    
    var filmes:[Filmes] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filmes
        filme = Filmes(titulo:"007 - Spectre", descricao: "descricao 1", imagem: #imageLiteral(resourceName: "filme1"))
        filmes.append( filme )
        
        filme = Filmes(titulo:"Star Wars", descricao: "descricao 2", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append( filme )
        
        filme = Filmes(titulo:"Impacto Mortal", descricao: "descricao 3", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append( filme )
        
        filme = Filmes(titulo:"Deadpool", descricao: "descricao 4", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append( filme )
        
        filme = Filmes(titulo:"O Regresso", descricao: "descricao 5", imagem: #imageLiteral(resourceName: "filme5"))
        filmes.append( filme )
        
        filme = Filmes(titulo:"A Herdeira", descricao: "descricao 6", imagem: #imageLiteral(resourceName: "filme6"))
        filmes.append( filme )
        
        filme = Filmes(titulo:"Caçadores de emoção", descricao: "descricao 7", imagem: #imageLiteral(resourceName: "filme7"))
        filmes.append( filme )
        
        filme = Filmes(titulo:"Regresso do mal", descricao: "descricao 8", imagem: #imageLiteral(resourceName: "filme8"))
        filmes.append( filme )
        
        filme = Filmes(titulo:"Tarzan", descricao: "descricao 9", imagem: #imageLiteral(resourceName: "filme9"))
        filmes.append( filme )
        
        filme = Filmes(titulo:"Filme 9", descricao: "descricao 10", imagem: #imageLiteral(resourceName: "filme10"))
        filmes.append( filme )
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = "dadosCelula"
        let filme: Filmes = filmes[indexPath.row]
        let celulaFilme = tableView.dequeueReusableCell(withIdentifier: celula, for: indexPath) as! FilmeCelula
        celulaFilme.tituloLabel.text = filme.titulo
        celulaFilme.filmeImageView.image = filme.imagem
        celulaFilme.descricaoLabel.text = filme.descricao
        
        //arredondamento via codigo
//        celulaFilme.filmeImageView.layer.cornerRadius = 42
//        celulaFilme.filmeImageView.clipsToBounds = true
        return celulaFilme
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "celulaDados" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let filmeSelecionado = self.filmes[ indexPath.row ]
                let viewController = segue.destination as! DetalhesViewController
                viewController.filmeSecionado = filmeSelecionado
            }
        }
    }
}

