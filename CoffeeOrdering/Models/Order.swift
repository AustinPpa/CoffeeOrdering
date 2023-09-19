//
//  Order.swift
//  CoffeeOrdering
//
//  Created by Austin Xu on 2023/8/30.
//

import Foundation

struct Order: Codable{
    
    let name: String
    let size: String
    let coffeeName: String
    let total: Double
    
}
