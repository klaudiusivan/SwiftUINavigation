//
//  SwiftUINavigationApp.swift
//  SwiftUINavigation
//
//  Created by Klaudius Ivan Anteraja on 03/09/23.
//

import SwiftUI

@main
struct SwiftUINavigationApp: App {
    @State var routes: [String] = []
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $routes) {
                
                ContentView()
                    .navigationDestination(for: String.self) { route in
                        if route == .wrong {
                            Text("Wrong Navigation")
                        }
                        
                        if let featureARoute = FeatureARoute(rawValue: route) {
                            switch featureARoute {
                            case .detail:
                                DetailView()
                            }
                        }
                        
                        if let featureBRoute = FeatureBRoute(rawValue: route) {
                            switch featureBRoute {
                            case .back:
                                Text("Should back not push")
                            case .detail:
                                AnotherDetailView()
                            }
                        }
                }
            }
            
            .environment(\.navigateFeatureA, { navType in
                
                switch navType {
                case .push(let route):
                    routes.append(route.fullName)
                case .unwind(let route):
                    guard let index = routes.firstIndex(where: { $0 == route.fullName }) else {
                        routes.append(.wrong)
                        return
                    }
                    routes = Array(routes.prefix(upTo: index + 1))
                }
                
            })
            
            .environment(\.navigateFeatureB, { navType in
                switch navType {
                case .unwind(let route):
                    switch route {
                    case .back:
                        routes = Array(routes.dropLast(1))
                    case .detail:
                        /// back to detail feature B
                        guard let index = routes.firstIndex(where: { $0 == route.fullName }) else {
                            routes.append(.wrong)
                            return
                        }
                        routes = Array(routes.prefix(upTo: index + 1))
                    }
                    
                case .push(let route):
                    switch route {
                    case .back: routes.append(.wrong)
                    case .detail:
                        routes.append(route.fullName)
                    }
                }
                
            })
        }
    }
}
