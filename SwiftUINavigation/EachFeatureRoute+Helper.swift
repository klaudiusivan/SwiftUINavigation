//
//  Navigation+Helper.swift
//  SwiftUINavigation
//
//  Created by Klaudius Ivan Anteraja on 04/09/23.
//

import Foundation
extension String {
    static var wrong = "wrong"
}
extension FeatureARoute {
    
    init?(rawValue: String) {
        switch rawValue {
        case FeatureARoute.detail.fullName:
            self = .detail
        default:
            return nil
        }
    }
    
    var fullName: String {
        return "\(type(of: self)).\(self)"
    }
}

extension FeatureBRoute {
    
    init?(rawValue: String) {
        switch rawValue {
        case FeatureBRoute.detail.fullName:
            self = .detail
        case FeatureBRoute.back.fullName:
            self = .back
        default:
            return nil
        }
    }
    
    var fullName: String {
        return "\(type(of: self)).\(self)"
    }
}
