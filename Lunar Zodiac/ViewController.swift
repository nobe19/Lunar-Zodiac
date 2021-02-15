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
    
    var currentYear = 2021
    var currentImageNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yearLabel.text = "\(currentYear)"
        animalImageView.image = UIImage(named: "image1")
    }

    @IBAction func leftButtonPressed(_ sender: UIButton) {
        currentImageNumber = currentImageNumber - 1
        currentYear -= 1
        if currentImageNumber < 0 {
            currentImageNumber = 11
        }
        yearLabel.text = "\(currentYear)"
        animalImageView.image = UIImage(named: "image\(currentImageNumber)")
    }
    @IBAction func rightButtonPressed(_ sender: UIButton) {
//        = currentImageNumber + 1
        currentImageNumber += 1
        currentYear += 1
        if currentImageNumber > 11 {
            currentImageNumber = 0
        }
        yearLabel.text = "\(currentYear)"
        animalImageView.image = UIImage(named: "image\(currentImageNumber)")
    }
}

