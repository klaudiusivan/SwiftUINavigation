//
//  DetailView.swift
//  SwiftUINavigation
//
//  Created by Klaudius Ivan Anteraja on 03/09/23.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.navigateFeatureB) private var navigate
    
    var body: some View {
        VStack {
            Text("This is Detail From Feature B")
            Button {
                navigate(.push(.detail))
            } label: {
                Text("Detail")
            }
            
            Button {
                navigate(.unwind(.back))
            } label: {
                Text("Back")
            }
        }
        

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
