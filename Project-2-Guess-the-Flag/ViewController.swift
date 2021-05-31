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
    var correctAnswer = 0
    var noOfQuestionsAsked = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia", "germany", "france", "italy", "uk", "us", "ireland", "monaco", "nigeria", "poland", "russia", "spain"]
        setFlagBorders()
        askQuestion()

    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        if (sender.tag == correctAnswer) {
            title = "Correct"
            score += 1
            showAlert(message: "Your score is \(score)")
        } else {
            title = "Wrong"
            score += -1
            showAlert(message: "Wrong, that's the flag of \(countries[correctAnswer].uppercased()) your score is \(score), ")
        }
        
        if noOfQuestionsAsked == 2 {
            
            score = 0
            noOfQuestionsAsked = 0
        }
        
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        noOfQuestionsAsked += 1
        countries.shuffle()
        
        correctAnswer = Int.random(in: 0...2)

        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = "\(countries[correctAnswer].uppercased()) - Score: \(score)"

    }
    
    func setFlagBorders() {
        button1.layer.borderWidth = 1
        button1.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button2.layer.borderWidth = 1
        button2.layer.borderColor = UIColor(red: 1.0, green: 0.9, blue: 0.2, alpha: 1.0).cgColor
        button3.layer.borderWidth = 1
        button3.layer.borderColor = UIColor.gray.cgColor
    }
    
    func showAlert(message: String ) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        
        present(ac, animated: true, completion: nil)
    }


}

