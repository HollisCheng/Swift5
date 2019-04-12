//
//  ViewController.swift
//  Swift5
//
//  Created by Hollis Cheng on 11/4/2019.
//  Copyright © 2019 Hollis Cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblChangeLanguage: UILabel!
    @IBOutlet weak var lblCLTitle: UILabel!
    @IBOutlet weak var lblCurrentLanguage: UILabel!
    @IBOutlet weak var swTCHIAndENG: UISwitch!
    @IBOutlet weak var btnHelloWorld: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblChangeLanguage.text = "Change Language".localized
        lblCLTitle.text = "Current Language".localized
        lblCurrentLanguage.text = getAppLanguage()
        btnHelloWorld.setTitle("Hello World".localized, for: .normal)
        
        if(getAppLanguage()==Constants.TChi){
            swTCHIAndENG.isOn = false
        }else{
            swTCHIAndENG.isOn = true
        }
        
        //input value to string sample
        //let format = "%i views".localized
        //print(String(format: format, 20))
        //lblCurrentLanguage.text = String(format: format, 20)
    }
    
    @IBAction func showMessage(){
        let alertController = UIAlertController(title: "HelloMsg".localized, message: "HI Hollis CHENG", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK".localized, style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func switchLanguage(_ sender:UISwitch){
        if(sender.isOn == true){
            print("UISwitch is now ON")
            saveUserDefaultsString(key: Constants.kAppLanguage,value: Constants.en)
            reloadData()
        }else{
            print("UISwitch is now OFF")
            saveUserDefaultsString(key: Constants.kAppLanguage,value: Constants.TChi)
            reloadData()
        }
    }
    
    
    func reloadData(){
        lblChangeLanguage.text = "Change Language".localized
        lblCLTitle.text = "Current Language".localized
        lblCurrentLanguage.text = getAppLanguage()
        btnHelloWorld.setTitle("Hello World".localized, for: .normal)
    }
}

