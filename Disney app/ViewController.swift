//
//  ViewController.swift
//  Disney app
//
//  Created by Bilel Bouricha on 26/03/2020.
//  Copyright © 2020 Bilel Bouricha. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    var saveTagType: Int?
    var saveTagWhere: Int?
    var homme: Array = ["mowgli", "kuzco", "aladdin"]
    var femme: Array = ["pocahontas", "raiponce", "esmeralda"]
    var animal: Array = ["timon", "la bete", "remi"]
    @IBOutlet var buttonsWhere: [UIButton]!
    @IBOutlet var buttonsType: [UIButton]!
    @IBOutlet weak var imageHero: UIImageView!
    @IBOutlet weak var labelHeroName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelHeroName.text = ""
        labelHeroName.layer.cornerRadius = 9
        labelHeroName.layer.masksToBounds = true
        for button in buttonsType {
            button.layer.cornerRadius = 15
        }
        for button in buttonsWhere {
            button.layer.cornerRadius = 15
        }
    }

    @IBAction func buttonsTypeAction(_ sender: UIButton) {
        switch sender.tag {
            case 0:
                buttonsType[0].backgroundColor = UIColor.systemTeal
                buttonsType[1].backgroundColor = UIColor.lightGray
                buttonsType[2].backgroundColor = UIColor.lightGray
            case 1:
                buttonsType[1].backgroundColor = UIColor.systemTeal
                buttonsType[0].backgroundColor = UIColor.lightGray
                buttonsType[2].backgroundColor = UIColor.lightGray
            case 2:
                buttonsType[2].backgroundColor = UIColor.systemTeal
                buttonsType[1].backgroundColor = UIColor.lightGray
                buttonsType[0].backgroundColor = UIColor.lightGray
            default:
                buttonsType[0].backgroundColor = UIColor.systemTeal
                buttonsType[1].backgroundColor = UIColor.lightGray
                buttonsType[2].backgroundColor = UIColor.lightGray
            }
        saveTagType = sender.tag
    }
    
    @IBAction func buttonsWhereAction(_ sender: UIButton) {
        switch sender.tag {
            case 0:
                buttonsWhere[0].backgroundColor = UIColor.systemTeal
                buttonsWhere[1].backgroundColor = UIColor.lightGray
                buttonsWhere[2].backgroundColor = UIColor.lightGray
            case 1:
                buttonsWhere[1].backgroundColor = UIColor.systemTeal
                buttonsWhere[0].backgroundColor = UIColor.lightGray
                buttonsWhere[2].backgroundColor = UIColor.lightGray
            case 2:
                buttonsWhere[2].backgroundColor = UIColor.systemTeal
                buttonsWhere[1].backgroundColor = UIColor.lightGray
                buttonsWhere[0].backgroundColor = UIColor.lightGray
            default:
                buttonsWhere[0].backgroundColor = UIColor.systemTeal
                buttonsWhere[1].backgroundColor = UIColor.lightGray
                buttonsWhere[2].backgroundColor = UIColor.lightGray
            }
        saveTagWhere = sender.tag
    }
    
    func getStringFromArray() -> String {
        switch saveTagType {
        case 0:
            return homme[saveTagWhere!]
        case 1:
            return femme[saveTagWhere!]
        default:
            return animal[saveTagWhere!]
        }
    }
    
    @IBAction func submitButton(_ sender: Any) {
        if (saveTagType == nil || saveTagWhere == nil) {
            labelHeroName.text = "Merci de choisir un type et un endroit"
        } else {
            labelHeroName.text = "Vous êtes :" + getStringFromArray().capitalized
            imageHero.isHidden = false
            imageHero.image = UIImage(named: getStringFromArray())
        }
        
    }

}

