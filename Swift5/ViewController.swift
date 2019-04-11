//
//  ViewController.swift
//  Swift5
//
//  Created by Hollis Cheng on 11/4/2019.
//  Copyright © 2019 Hollis Cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(){
        let alertController = UIAlertController(title: "Welcome to Swift5", message: "HI Hollis CHENG", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }

}

