//
//  StateView.swift
//  test_state
//
//  Created by Tobias Skjelvik on 28/09/2024.
//

import SwiftUI





struct BindingView: View {
    @Binding var someStateBinding: Bool
    
    var body: some View {
        Text("I'm the binding view, I only want to change the darkmode in the main view")
        Toggle("Toggle me", isOn: $someStateBinding)
        
      
            
        NavigationLink("Click to see a secret"){
            DeepChildView()
        }.buttonStyle(.borderedProminent)
       
        
       
    }
}



struct DeepChildView: View {
    @EnvironmentObject var secret: EnvironmentObjectSecret
    
    var body: some View {
        VStack{
            Text(secret.secretMesasge)
        }
    }
}

#Preview {
    struct Preview: View {
        
    @State var darkMode = false
        @EnvironmentObject var secret: EnvironmentObjectSecret
        var body: some View {
            
    BindingView(someStateBinding: $darkMode)
                .environmentObject(secret)
    }
    }
    return Preview().environmentObject(EnvironmentObjectSecret())
}
