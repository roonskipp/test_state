//
//  stateSingleton.swift
//  test_state
//
//  Created by Tobias Skjelvik on 28/09/2024.
//

import Foundation
import SwiftUI

let sharedAppStateManager = AppStateManager()

class AppStateManager: ObservableObject {
    
    @Published var text: String = "Hello, World!"
    
    
    @AppStorage("testNumber") var testNumber = "1" {
        willSet {
            print("testNumber: \(testNumber)")
        }
        didSet {
            print("testNumber: \(testNumber)")
            sharedIceCreamManager.changeIceCream(iceCreamNumber: Int(testNumber) ?? -1)
        }
    }
    
    
}
