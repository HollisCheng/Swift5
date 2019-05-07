//
//  Item2ViewController.swift
//  Swift5
//
//  Created by Hollis Cheng on 7/5/2019.
//  Copyright © 2019 Hollis Cheng. All rights reserved.
//

import UIKit

class Item2ViewController: UIViewController {

    @IBOutlet weak var lblCenter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(changeLanguage(_:)),
                                               name: Notification.Name(rawValue: "changeLanguage"),
                                               object: nil)
        
         lblCenter.text = "Item2CenterText".localized
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func updateText(){
        lblCenter.text = "Item2CenterText".localized
    }

    @objc func changeLanguage(_ notification:Notification){
        print("changeLanguage notification at item2")
        updateText()
    }
    
}
