//
//  FeatureBNavigation.swift
//  SwiftUINavigation
//
//  Created by Klaudius Ivan Anteraja on 03/09/23.
//

import Foundation
import SwiftUI

enum FeatureBRoute {
    case back
    case detail
}

enum FeatureBNavigationType {
    case unwind(FeatureBRoute)
    case push(FeatureBRoute)
}

struct FeatureBNavigateEnvironmentKey: EnvironmentKey {
    static var defaultValue: (FeatureBNavigationType) -> Void = { _ in }
}

extension EnvironmentValues {
    var navigateFeatureB: (FeatureBNavigationType) -> Void {
        get { self[FeatureBNavigateEnvironmentKey.self] }
        set { self[FeatureBNavigateEnvironmentKey.self] = newValue }
    }
}
