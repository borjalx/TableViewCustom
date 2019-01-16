//
//  ViewController.swift
//  EjemploTableView
//
//  Created by Borja S on 15/01/2019.
//  Copyright © 2019 Borja S. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    var simpsons:[Character] = [Character(name: "Bart", description: "El travieso de la familia", image: UIImage(named: "bart")!),
    Character(name: "Homer", description: "Simio subdesarrollado", image: UIImage(named: "homer")!),
    Character(name: "Marge", description: "Matriarca con Síndrome de Estocolmo", image: UIImage(named: "marge")!),
    Character(name: "Lisa", description: "Sabeloto vegana", image: UIImage(named: "lisa")!),
    Character(name: "Maggie", description: "Sin palabras", image: UIImage(named: "maggie")!)]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsons.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TVCustom
        
        myCell.imgShow.image = simpsons[indexPath.row].image
        myCell.titleShow.text = simpsons[indexPath.row].name
        myCell.descriptionShow.text = simpsons[indexPath.row].description
        
        return myCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Familia Simpson"
    }

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
    }


}

