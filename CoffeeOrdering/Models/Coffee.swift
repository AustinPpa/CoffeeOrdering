//
//  Coffee.swift
//  CoffeeOrdering
//
//  Created by Austin Xu on 2023/8/30.
//

import Foundation

struct Coffee{
    let name: String
    let imageURL: String
    let price: Double
    
    static func all()->[Coffee]{
        return[
            Coffee(name: "Cappuccino", imageURL: "Cappuccino", price: 2.5)
        ]
    }
}
