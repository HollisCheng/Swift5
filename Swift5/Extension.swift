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
            let path = Bundle.main.path(forResource: getBundleLang(), ofType: "lproj")
            let bundle = Bundle(path: path!)
            return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
//        return NSLocalizedString(self, comment: "")
    }
}

