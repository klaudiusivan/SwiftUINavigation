//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by Klaudius Ivan Anteraja on 03/09/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.navigateFeatureA) private var navigate
    
    var body: some View {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Home Feature A")
                Button("Detail", action: {
                    navigate(.push(.detail))
                })
            }
            .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
