//
//  pickerView.swift
//  test_state
//
//  Created by Tobias Skjelvik on 28/09/2024.
//

import SwiftUI

struct pickerView: View {
    @ObservedObject var stateManager = sharedAppStateManager
    
    var body: some View {
        Text("Chosen number: \(stateManager.testNumber)")
        Picker("numberTest", selection: $stateManager.testNumber) {
            ForEach(0..<10) { number in
                Text("\(number)").tag(String(number))
            }.pickerStyle(.wheel)
        }    }
}

#Preview {
    pickerView()
}
