//
//  ViewController.swift
//  Guess the Flag
//
//  Created by Veerababu Mulugu on 6/28/19.
//  Copyright © 2019 Veerababu Mulugu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //        countries.append("estonia")
        //        countries.append("france")
        //        countries.append("germany")
        //        countries.append("ireland")
        //        countries.append("italy")
        //        countries.append("monaco")
        //        countries.append("nigeria")
        //        countries.append("poland")
        //        countries.append("russia")
        //        countries.append("spain")
        //        countries.append("uk")
        //        countries.append("us")
        //
        
        //Or else wecan create here like this....
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        //        print(countries)
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor(red: 1.0, green: 0.6, blue: 0.2, alpha: 1.0).cgColor
        
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        
        askQuestion(action: nil)
    }
    
    func askQuestion(action: UIAlertAction! = nil) {

        
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = countries[correctAnswer].uppercased()
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        if (sender as AnyObject).tag == correctAnswer {
            title = "Coorrect"
            score += 1
        }else{
            title = "Wrong"
            score -= 1
        
            
        }
        let ac = UIAlertController(title: title, message: "Your score is \(score).", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        present(ac, animated: true)
        
    }
    
    
    
}

