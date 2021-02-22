//
//  ViewController.swift
//  Lunar Zodiac
//
//  Created by John Gallaugher on 2/8/21.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalNameLabel: UILabel!
    
    
    var currentYear = 2021
    var currentImageNumber = 1
    let animalNames = ["RAT", "OX", "TIGER", "RABBIT", "DRAGON", "SNAKE", "HORSE", "GOAT", "MONKEY", "ROOSTER", "DOG", "PIG"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yearLabel.text = "\(currentYear)"
        animalNameLabel.text = animalNames[currentImageNumber]
        animalImageView.image = UIImage(named:
            animalNames[currentImageNumber])
        print(animalNames[currentImageNumber])
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        currentImageNumber = currentImageNumber + sender.tag
        currentYear += sender.tag
        if currentImageNumber < 0 {
            currentImageNumber = 11
        }
        if currentImageNumber > 11 {
            currentImageNumber = 0
        }
        yearLabel.text = "\(currentYear)"
        animalNameLabel.text = animalNames[currentImageNumber]
        animalImageView.image = UIImage(named:
            animalNames[currentImageNumber])
        print(animalNames[currentImageNumber])
    }
}


