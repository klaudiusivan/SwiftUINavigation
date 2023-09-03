//
//  FeatureAModule.swift
//  SwiftUINavigation
//
//  Created by Klaudius Ivan Anteraja on 03/09/23.
//

import Foundation
import SwiftUI

enum FeatureARoute {
    case detail
}

enum FeatureANavigationType {
    case push(FeatureARoute)
    case unwind(FeatureARoute)
}

struct FeatureANavigateEnvironmentKey: EnvironmentKey {
    static var defaultValue: (FeatureANavigationType) -> Void = { _ in }
}

extension EnvironmentValues {
    var navigateFeatureA: (FeatureANavigationType) -> Void {
        get { self[FeatureANavigateEnvironmentKey.self] }
        set { self[FeatureANavigateEnvironmentKey.self] = newValue }
    }
}
