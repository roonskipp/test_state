//
//  ContentView.swift
//  test_state
//
//  Created by Tobias Skjelvik on 28/09/2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var stateManager = sharedAppStateManager
    @ObservedObject var iceCreamManager = sharedIceCreamManager
    
    
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house.fill") {
                Text(stateManager.testNumber)
                Text(iceCreamManager.iceCream)
            }

            Tab("Number", systemImage: "dice.fill") {
                pickerView()
            }
        }

        .padding()
    }
}

#Preview {
    ContentView()
}
