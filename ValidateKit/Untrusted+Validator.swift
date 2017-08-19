//
//  Untrusted+Validator.swift
//  ValidateKit
//
//  Created by Vincent on 19/08/2017.
//  Copyright © 2017 Vincent. All rights reserved.
//

import Foundation

public struct Untrusted<T> {
    
    fileprivate let value: T
    
    public init(value: T) {
        self.value = value
    }
}

public protocol Validator {
    
    associatedtype T
    
    static func validation(value: T) -> Bool
}

extension Validator {
    
    public static func validate(untrusted: Untrusted<T>) -> T? {
        if self.validation(value: untrusted.value) {
            return untrusted.value
        } else {
            return nil
        }
    }
}
