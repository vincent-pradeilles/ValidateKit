//
//  Amount.swift
//  ValidateKit
//
//  Created by Vincent on 19/08/2017.
//  Copyright © 2017 Vincent. All rights reserved.
//

import Foundation
import ValidateKit

struct Amount {
    let value: String
    
    init?(untrusted: Untrusted<String>) {
        guard let trustedValue = AmountValidator.validate(untrusted: untrusted) else { return nil }
        
        self.value = trustedValue
    }
}

fileprivate struct AmountValidator: Validator {
    
    static func validation(value: String) -> Bool {
        let numberFormatter = NumberFormatter()
        let parsedNumber = numberFormatter.number(from: value)
        
        return parsedNumber != nil
    }
}
