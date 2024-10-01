//
//  vartet.swift
//  test_state
//
//  Created by Tobias Skjelvik on 01/10/2024.
//

import SwiftUI

struct vartet: View {
    
    @ObservedObject var someObservable: someObservableClass
    @State var oiskiboiski: String = "ok"
    
    
    var body: some View {
        VStack{
            Text(someObservable.fruit)
            Button("Change fruit"){
                oiskiboiski = "notOk"
                print(someObservable.fruit)
                someObservable.fruit = "apple"
            }
            
        }.onAppear{
            // after 2 seconds change someString to hade
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.oiskiboiski = "hade"
            }
        }
        .onChange(of: oiskiboiski){ oldValue, newValue in
            print("oldValue: \(oldValue) newValue: \(newValue)")
        }
    }
}

class someObservableClass: ObservableObject {
    @Published var fruit: String = "banana"
    
}

#Preview {
    vartet(someObservable: someObservableClass(), oiskiboiski: "Hello, World!")
}
