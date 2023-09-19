//
//  OrderListViewModel.swift
//  CoffeeOrdering
//
//  Created by Austin Xu on 2023/8/30.
//

import Foundation

class OrderListViewModel: ObservableObject{
    @Published var orders = [OrderViewModel]()

    init(){
        fetchOrders()
    }
    
    func fetchOrders() {
        Webservice().getAllOrders{ orders in
            if let fetched_orders = orders{
                self.orders = fetched_orders.map(OrderViewModel.init)
            }
            
        }
    }
}

class OrderViewModel{
    
    let id = UUID()
    
    var order: Order
    
    init(order: Order) {
        self.order = order
    }
    
    // Computed property
    var name: String{
        return self.order.name
    }
    
    var size: String{
        return self.order.size
    }
    
    var coffeeName: String{
        return self.order.coffeeName
    }
    
    var total: Double{
        return self.order.total
    }
}
