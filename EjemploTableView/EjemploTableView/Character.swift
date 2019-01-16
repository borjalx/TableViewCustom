//
//  Character.swift
//  EjemploTableView
//
//  Created by Borja S on 15/01/2019.
//  Copyright © 2019 Borja S. All rights reserved.
//

import Foundation
import UIKit

class Character {
    
    var name:String
    var description:String
    var image: UIImage
    
    init(name:String, description:String, image:UIImage) {
        self.name = name
        self.description = description
        self.image = image
    }
}
