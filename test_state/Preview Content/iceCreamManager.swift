//
//  iceCreamManager.swift
//  test_state
//
//  Created by Tobias Skjelvik on 28/09/2024.
//

import Foundation

let sharedIceCreamManager = iceCreamManager()

class iceCreamManager: ObservableObject {
    @Published var iceCream: String = "Chocolate"
    
    func changeIceCream(iceCreamNumber: Int) {
        switch iceCreamNumber {
        case 0:
            iceCream = "Chocolate"
        case 1:
            iceCream = "Strawberry"
        case 2:
            iceCream = "Blueberry"
        case 3:
            iceCream = "Mango"
        case 4:
            iceCream = "Pineapple"
        case 5:
            iceCream = "Rum"
        case 6:
            iceCream = "Rum and Raisin"
        case 7:
            iceCream = "Oreos"
        case 8:
            iceCream = "Pineapple"
        case 9:
            iceCream = "Coconut"
        case 10:
            iceCream = "Almond"
        default:
            iceCream = "Unknown flavor"
        }
    }
}
