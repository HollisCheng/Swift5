//
//  ViewController.swift
//  Swift5
//
//  Created by Hollis Cheng on 11/4/2019.
//  Copyright © 2019 Hollis Cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCurrentLanguage: UILabel!
    @IBOutlet weak var swTCHIAndENG: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
         lblCurrentLanguage.text = Locale.current.languageCode
        
        if(Locale.current.languageCode=="en"){
            swTCHIAndENG.isOn = true
        }else{
            swTCHIAndENG.isOn = false
        }
    }

    @IBAction func showMessage(){
        let alertController = UIAlertController(title: NSLocalizedString("HelloMsg", comment:""), message: "HI Hollis CHENG", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: ""), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alertController, animated: true, completion: nil)
    }

    @IBAction func switchLanguage(_ sender:UISwitch){
        if(sender.isOn == true){
            print("UISwitch is now ON")
        }else{
            print("UISwitch is now OFF")
        }
    }
    
}

