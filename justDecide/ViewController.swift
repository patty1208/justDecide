//
//  ViewController.swift
//  justDecide
//
//  Created by 林佩柔 on 2021/2/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var teaShopImageView: UIImageView!
    
    @IBOutlet weak var randomTeaShopButton: UIButton!
    @IBOutlet weak var randomDrinkButton: UIButton!
    
    @IBOutlet weak var drinkLabel: UILabel!
    let tesShopNames: Array = ["comebuy", "coco", "可不可", "清心", "迷客夏", "大苑子","鮮茶道"]
    var randomTeaShopName: String = "null"
    var randomDrinkNumber:Int = 0
    
    let shop1Drinks: Array = ["麥香奶茶","金萱拿鐵"]
    let shop2Drinks: Array = ["焙茶拿鐵", "蕎麥冬瓜"]
    let shop3Drinks: Array = ["春芽冷露"]
    let shop4Drinks: Array = ["多多綠茶", "烏龍奶茶", "蜂蜜鮮奶普洱", "蘆薈藍莓醋", "菁茶"]
    let shop5Drinks: Array = ["伯爵紅茶拿鐵"]
    let shop6Drinks: Array = ["柳橙綠", "柚美粒"]
    let shop7Drinks: Array = ["伯爵紅茶","伯爵紅茶"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomDrinkButton.isEnabled = false
    }
    
    
    @IBAction func changeTeaShop(_ sender: UIButton) {
        let shopCount = tesShopNames.count
        let randomNumber = Int.random(in: 1...shopCount)
        teaShopImageView.image = UIImage(named: tesShopNames[randomNumber-1])
        randomTeaShopName = tesShopNames[randomNumber-1]
        sender.setTitle("", for: .normal)
        sender.setImage(UIImage(systemName: "arrow.clockwise"), for: .normal)
        randomDrinkButton.isEnabled = true
    }
    
    @IBAction func changeDrinkButton(_ sender: UIButton) {
        if randomTeaShopName == "comebuy"{
            randomDrinkNumber = Int.random(in: 1...shop1Drinks.count)
            drinkLabel.text = shop1Drinks[randomDrinkNumber-1]
        } else if randomTeaShopName == "coco"{
            randomDrinkNumber = Int.random(in: 1...shop2Drinks.count)
            drinkLabel.text = shop2Drinks[randomDrinkNumber-1]
        } else if randomTeaShopName == "可不可"{
            randomDrinkNumber = Int.random(in: 1...shop3Drinks.count)
            drinkLabel.text = shop3Drinks[randomDrinkNumber-1]
        } else if randomTeaShopName == "清心"{
            randomDrinkNumber = Int.random(in: 1...shop4Drinks.count)
            drinkLabel.text = shop4Drinks[randomDrinkNumber-1]
        } else if randomTeaShopName == "迷客夏"{
            randomDrinkNumber = Int.random(in: 1...shop5Drinks.count)
            drinkLabel.text = shop5Drinks[randomDrinkNumber-1]
        } else if randomTeaShopName == "大苑子"{
            randomDrinkNumber = Int.random(in: 1...shop6Drinks.count)
            drinkLabel.text = shop6Drinks[randomDrinkNumber-1]
        } else if randomTeaShopName == "鮮茶道"{
            randomDrinkNumber = Int.random(in: 1...shop7Drinks.count)
            drinkLabel.text = shop7Drinks[randomDrinkNumber-1]
        }
        sender.setTitle("", for: .normal)
        sender.setImage(UIImage(systemName: "arrow.clockwise"), for: .normal)
        
    }
    
}

