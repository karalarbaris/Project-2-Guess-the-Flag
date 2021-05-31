//
//  ViewController.swift
//  Project-2-Guess-the-Flag
//
//  Created by Baris Karalar on 31.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia", "germany", "france", "italy", "uk", "us"]
        setFlagBorders()
        askQuestion()

    }
    
    func askQuestion() {
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
    }
    
    func setFlagBorders() {
        button1.layer.borderWidth = 1
        button1.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button2.layer.borderWidth = 1
        button2.layer.borderColor = UIColor(red: 1.0, green: 0.9, blue: 0.2, alpha: 1.0).cgColor
        button3.layer.borderWidth = 1
        button3.layer.borderColor = UIColor.gray.cgColor
    }


}

