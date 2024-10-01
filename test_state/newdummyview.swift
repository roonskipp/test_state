//
//  newdummyview.swift
//  test_state
//
//  Created by Tobias Skjelvik on 01/10/2024.
//

import SwiftUI

struct newdummyview: View {
    @State var text = "Hello,2!"
    
    
    var body: some View {
        VStack{
            Text(text)
         
            ExtractedView(textCopy: $text)
        }
         
    }
}

#Preview {
    newdummyview()
}

struct ExtractedView: View {
    @Binding var textCopy: String
    
    
    var body: some View {
        VStack{
           
            Text(textCopy)
            
        }
    }
}
