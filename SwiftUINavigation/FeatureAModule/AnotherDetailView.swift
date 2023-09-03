//
//  AnotherDetailView.swift
//  SwiftUINavigation
//
//  Created by Klaudius Ivan Anteraja on 04/09/23.
//

import SwiftUI

struct AnotherDetailView: View {
    @Environment(\.navigateFeatureA) private var navigate
    
    /**
     - Consist of
     ```
     Text("Another Detail From Feature A!")
     
     Button("Back To Detail Page Of Feature A") {
         navigate(.unwind(.detail))
     }
     ```
     */
    var body: some View {
        Text("Another Detail From Feature A!")
        
        Button("Back To Detail Page Of Feature A") {
            navigate(.unwind(.detail))
        }
    }
}

struct AnotherDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AnotherDetailView()
    }
}
