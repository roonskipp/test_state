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
    @State var darkMode: Bool = false
    @EnvironmentObject var secretMessage: EnvironmentObjectSecret
    
    
    
    var body: some View {
        NavigationStack{
            VStack{
                TabView {
                    Tab("Home", systemImage: "house.fill") {
                        VStack{
                            Spacer()
                            HStack {
                                Spacer()
                                Text(stateManager.testNumber).colorScheme(darkMode ? .dark : .light)
                                Text(iceCreamManager.iceCream).colorScheme(darkMode ? .dark : .light)
                                Spacer()
                            }
                            Spacer()
                        }
                        
                        .background(Color.gray.opacity(darkMode ? 1 : 0))
                    }
                    
                    Tab("Number", systemImage: "dice.fill") {
                        pickerView()
                    }
                    Tab("Settings", systemImage: "building.fill"){
                        BindingView(someStateBinding: $darkMode)
                            .environmentObject(secretMessage)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView().environmentObject(EnvironmentObjectSecret())
}
