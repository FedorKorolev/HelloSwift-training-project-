//
//  String+Extension.swift
//  HelloSwift
//
//  Created by Фёдор Королёв on 25.02.17.
//  Copyright © 2017 Фёдор Королёв. All rights reserved.
//

import Foundation

extension String {
    var filterForNumberConversion: String {
        
        let allowedChars = "1234567890.,".characters
        
        let result = self.characters.filter { char -> Bool in
            let contains = allowedChars.contains(char)
            return contains
        }
        return String(result)
    }
}
