//
//  Webservice.swift
//  CoffeeOrdering
//
//  Created by Austin Xu on 2023/8/30.
//

import Foundation

struct Webservice{
    func getAllOrders(completion: @escaping ([Order]?) -> ()){
        guard let url = URL(string: "https://island-bramble.glitch.me/orders") else{
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else{
                completion(nil)
                return
            }
            let orders = try? JSONDecoder().decode([Order].self, from: data)
            DispatchQueue.main.async{
                completion(orders)
            }
        }.resume()
    }
}
