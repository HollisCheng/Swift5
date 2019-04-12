//
//  Common-Functions.swift
//  Swift5
//
//  Created by HollisCHENG on 12/4/2019.
//  Copyright © 2019 Hollis Cheng. All rights reserved.
//

import Foundation

func saveUserDefaultsString(key:String,value:String){
    UserDefaults.standard.set(value,forKey: key)
}

func getUserDefaultsString(key:String)->String?{
    return UserDefaults.standard.string(forKey: key)
}

func getBundleLang()->String{
    if(getAppLanguage()==Constants.TChi){
        return Constants.zh_HK
    }else{
        return Constants.en
    }
}

func getAppLanguage() -> String? {
    if(UserDefaults.standard.string(forKey: Constants.kAppLanguage) != nil){
        return getUserDefaultsString(key: Constants.kAppLanguage)
    }else{
        return nil
    }
}
