//
//  MainTabBarController.swift
//  Swift5
//
//  Created by Hollis Cheng on 7/5/2019.
//  Copyright © 2019 Hollis Cheng. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    var tabBarItems = UITabBarItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.red], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.white], for: .normal)
        
        let selectedImage1 = UIImage(named:"assetHappenIconInactive")?.withRenderingMode(.alwaysOriginal)
        let deSelectedImage1 = UIImage(named:"assetHappenIconInactive")?.withRenderingMode(.alwaysOriginal)
        tabBarItems = self.tabBar.items![0]
        tabBarItems.image = deSelectedImage1
        tabBarItems.selectedImage = selectedImage1
        
        let selectedImage2 = UIImage(named:"assetPriviliegesIconInactive")?.withRenderingMode(.alwaysOriginal)
        let deSelectedImage2 = UIImage(named:"assetPriviliegesIconInactive")?.withRenderingMode(.alwaysOriginal)
        tabBarItems = self.tabBar.items![1]
        tabBarItems.image = deSelectedImage2
        tabBarItems.selectedImage = selectedImage2
        
        let selectedImage3 = UIImage(named:"assetResidentIconInactive")?.withRenderingMode(.alwaysOriginal)
        let deSelectedImage3 = UIImage(named:"assetResidentIconInactive")?.withRenderingMode(.alwaysOriginal)
        tabBarItems = self.tabBar.items![2]
        tabBarItems.image = deSelectedImage3
        tabBarItems.selectedImage = selectedImage3
        
//        let numberOfTabs = CGFloat((tabBar.items?.count)!)
//        let tabBarSize = CGSize(width: tabBar.frame.width / numberOfTabs, height: tabBar.frame.height)
//        tabBar.selectionIndicatorImage = UIImage().imageWithColorBG(color: UIColor.red, size: tabBarSize)

        self.selectedIndex = 0
        
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
    
}

extension UIImage{
    func imageWithColorBG(color:UIColor,size:CGSize) -> UIImage{
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(size,false,0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
