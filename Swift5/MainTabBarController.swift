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
    let customButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.red], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.white], for: .normal)
        
        let selectedImage1 = UIImage(named:"assetHappenIconInactive")?.withRenderingMode(.alwaysOriginal)
        let deSelectedImage1 = UIImage(named:"assetHappenIconInactive")?.withRenderingMode(.alwaysOriginal)
        tabBarItems = self.tabBar.items![0]
        tabBarItems.image = deSelectedImage1
        tabBarItems.selectedImage = selectedImage1
        
//        let selectedImage2 = UIImage(named:"assetPriviliegesIconInactive")?.withRenderingMode(.alwaysOriginal)
//        let deSelectedImage2 = UIImage(named:"assetPriviliegesIconInactive")?.withRenderingMode(.alwaysOriginal)
//        tabBarItems = self.tabBar.items![1]
//        tabBarItems.image = deSelectedImage2
//        tabBarItems.selectedImage = selectedImage2
        
        settingButton()
        
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
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        // 判斷點選的頁面 title 是否為 Home：true 按鈕背景色為白色；false 則為灰色。
        if item.title == "Home" {
            customButton.backgroundColor = .red
        } else {
            customButton.backgroundColor = .gray
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
 
    func settingButton() {
        let image = UIImage(named: "assetPriviliegesIconInactive")
        customButton.setImage(image, for: .normal)
        customButton.frame.size = CGSize(width: 60, height: 60)
        // 這邊希望他超出 tabBar 範圍，因此在這邊提高其 y 軸位置。
        customButton.center = CGPoint(x: tabBar.bounds.midX, y: tabBar.bounds.midY - customButton.frame.height / 3)
        customButton.backgroundColor = .gray
        customButton.layer.cornerRadius = 15
        customButton.layer.borderColor = UIColor.black.cgColor
        customButton.layer.borderWidth = 3
        customButton.clipsToBounds = true
        // 取消按鈕點選 highLight 效果
        customButton.adjustsImageWhenHighlighted = false
        // 為客製化按鈕新增一個點擊事件
        customButton.addTarget(self, action: #selector(showViewController), for: .touchDown)
        tabBar.addSubview(customButton)
    }
    
    @objc func showViewController() {
        // 設置按鈕背景色，讓他看起來有 highlighted 的效果
        customButton.backgroundColor = .red
        // 跳轉至 tabBarController 相對應的索引值的
        self.selectedIndex = 1
    }
    
   
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        touches.forEach { (touch) in
            // position 為碰觸的位置
            let position = touch.location(in: tabBar)
            // 按鈕的高度偏差值
            let offset = customButton.frame.height / 3
            // 判斷按鈕 x 軸範圍是否在其中
            if customButton.frame.minX <= position.x && position.x <= customButton.frame.maxX {
                // 判斷按鈕 y 軸範圍是否在其中
                if customButton.frame.minY - offset <= position.y && position.y <= customButton.frame.maxY - offset{
                    // 執行相同的按鈕方法
                    showViewController()
                }
            }
        }
    }
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
