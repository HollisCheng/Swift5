//
//  StringExtension.swift
//  Swift5
//
//  Created by HollisCHENG on 12/4/2019.
//  Copyright © 2019 Hollis Cheng. All rights reserved.
//

import Foundation

extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
//    let path = Bundle.main.path(forResource: lang, ofType: "lproj")
//    let bundle = Bundle(path: path!)
//    return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
}
