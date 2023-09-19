//
//  ContentView.swift
//  CoffeeOrdering
//
//  Created by Austin Xu on 2023/8/30.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var orderListVM = OrderListViewModel()
    
    var body: some View {
        OrderListView(orders: self.orderListVM.orders)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
