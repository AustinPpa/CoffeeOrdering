//
//  OrderListView.swift
//  CoffeeOrdering
//
//  Created by Austin Xu on 2023/8/30.
//

import SwiftUI

struct OrderListView: View {
    let orders: [OrderViewModel]
    
    init(orders: [OrderViewModel]) {
        self.orders = orders
    }
    
    var body: some View {
        List{
            ForEach(self.orders, id:\.id){ order in
                HStack{
                    Image(order.coffeeName)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(6)
                    VStack{
                        Text(order.name)
                        Text(order.coffeeName)
                        Text(order.size)
                    }
                }
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orders: [OrderViewModel(order: Order(name: "austin", size: "normal", coffeeName: "Cappuccino", total: 3.4))])
    }
}
